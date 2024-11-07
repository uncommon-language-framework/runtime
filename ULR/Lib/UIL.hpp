#include "Resolver.hpp"
#include <stack>

#pragma once

#ifndef _WIN64
#error "No UIL JIT support for non-windows x64 platforms currently"
#endif

inline size_t GetStorageSizex64(ULR::Type* type)
{
	return IsBoxableStruct(type) ? PadToNextWordx64(type->size) : 8;
}

namespace ULR::IL
{
	using byte = unsigned char;
	
	namespace Helpers
	{
		class StackValueExpression
		{
			enum ExpressionType
			{
				StringLiteral,
				IntegerConstant,
				FloatConstant,
				FieldLookup,
				FuncRetValue,
				LocalLookup,
				ArrayLookup
			} expr_type;

			union Value {
				void* addr;
				int index;
				int rbp_offset;
				std::string_view str;
			} value;
		};

		using EvalStack = std::stack<StackValueExpression>;

		struct LocalInfo
		{
			int offset;
			size_t size;
			bool is_struct;
		};

		using LocalLookupTable = std::vector<LocalInfo>;		
	}

	struct CompilationError
	{
		enum ErrorCode
		{
			None,
			TypeExpected,
			MemberExpected,
			InvalidInstr,
			LocalTypeExpected,
			InvalidTypeIdentifer,
			InvalidDirective,
			SignalExpected
		};

		char* error;
		ErrorCode code;
		byte* byte_at;

		operator bool()
		{
			return code != ErrorCode::None;
		}
	};

	constexpr CompilationError NoError { nullptr, CompilationError::ErrorCode::None, nullptr };

	enum OpCodes : byte
	{
		Add,
		Sub,
		Mul,
		Div,
		Mod,
		DivMod,
		And,
		Or,
		Not,
		Xor,
		CstNV, // Cast Numerical Value
		LdStr, // load string
		LdNC, // load numerical constant
		LdFld, // load field
		LdLoc, // load local
		LdAPL, // load argument-passed local
		LdElem, // load element
		LdITO, // may remove, probably useless [load internal type object]
		LdETO, // may remove, [load external type object]
		LdLst, // load last - pushes the most recently popped item back onto the evaluation stack (this is only guaranteed to work after a StXXX instruction and cannot be used successively)
		VTSCp, // ValueType Stack Copy [may remove - find uses?]
		Call,
		Box,
		UnBox,
		VCall, // virtual call
		StFld, // store field
		StLoc, // store local
		StAPL, // store argument-passed local
		StElem, // store element
		CtObjSS, // construct new object on stack (short lifetime, only guaranteed to last until next call/vcall/ctobjs* allocation or end of section/scope, whichever comes first)
		CtObjSL, // construct new object on stack (long lifetime, guaranteed to last until end of section/scope)
		CtObjH, // construct new object on heap (heap lifetime, guaranteed to last until all references are lost)
		NewArr, // allocate new array
		Ret,
		
		/* Jumping Instructions */
		Jmp, // jump
		JNE, // jump if not eq
		JEq, // jump if eq
		JLT, // jump if less than
		JGT, // jump if greater than
		JLU, // jump if less than (unsigned)
		JGU, // jump if greater than (unsigned)
		JLE, // jump if less than or eq
		JGE, // jump if greater than or eq
		JLEU, // jump ig less than or eq (unsigned)
		JGEU, // jump if greater than or eq (unsigned)
		JNZ, // jump if truthy/nonzero (e.g != 0)
		JEqZ, // jump if false (e.g. == 0)

		/* Below are UIL signals, used to section code */
		BeginType,
		EndTypeMeta,
		EndType,
		BeginMethod,
		BeginCtor,
		BeginDtor,
		EndMethod,
		BeginSection,
		EndAssembly,
		NewArg,
		Dependency,

		FieldDecl,
		LocalDecl,
	};

	enum Flags : byte
	{
		Static,
		Instance,
		Ctor,
		ULAS,
		Native
	};

	enum NumericalTypeIdentifier : byte
	{
		Int8,
		UInt8,
		Int16,
		UInt16,
		Int32,
		UInt32,
		Int64,
		UInt64,
		Float32,
		Float64
	};

	class LocalInfo
	{
		public:
			int jit_index;
			Type* lcl_type;
			int rbp_offset;
	};

	class JITMethodInfo
	{
		public:
			void* addr;
			std::vector<LocalInfo> locals;
	};

	class AssemblyJITInfo
	{
		public:
			std::vector<JITMethodInfo> methods;
	};
	
	class JITContext
	{
		std::vector<void*> virt_alloced;
		std::vector<void*> malloc_alloced;
		Resolver::ULRAPIImpl* api;
		Type* SystemStringType;

		void EnsureInitialized();

		public:
			JITContext(Resolver::ULRAPIImpl* api);
			/*
				JITContext::Compile() returns the error from the compilation (if any) and populates the Assembly pointed to by meta_asm with all of the methods, fields, and other content held within the il and stringref blocks. Compile() may use either stack-based assembly compilation or may make more heavy use of registers.

				Both Compile() and StackBaseCompile() make three passes to compile IL: the first pass reads symbols and determines the size of fields, much like the ULR Loader reading phase. The second pass generates machine code bytes sectioned off by method and determines the size of memory needed to store each method. During the third pass, executable blocks of memory are allocated, the code is copied into the blocks, and any method call addresses within the code are resolved and added to the machine code bytes.
			
				NOTE: meta_asm MUST be added to the current ULRAPI instance's records before jitting.
			*/
			CompilationError Compile(Assembly* meta_asm, byte il[], byte string_ref[]);

			/*
			This method is identical to Compile(), except in that it always compiles IL using a stack-based environment (limited register use).
			
			NOTE: meta_asm MUST be added to the current ULRAPI instance's records before jitting.
			*/
			CompilationError StackBaseCompile(Assembly* meta_asm, byte il[], byte string_ref[]);
			
			CompilationError ReadTypeMeta(Assembly* meta_asm, size_t& i, byte il[], byte string_ref[]);
			CompilationError CompileType(
				Assembly* meta_asm,
				std::map<byte*, MemberInfo*>& replace_addrs,
				std::map<MemberInfo*, std::vector<byte>>& dynamic_code,
				size_t& i, byte il[], byte string_ref[]
			);
			CompilationError CompileGenericType(Assembly* meta_asm, size_t& i, byte il[], byte string_ref[], Type* (*ResolveGenericLookup)(byte));
			
			// CompileSection -> CompileMethodBodySection
			CompilationError CompileSection( // TODO: refactor so that this just maps to a CompileGenericSection call with no generic resolver passed
				unsigned int& locals_size,
				unsigned int& recyclable_stack_space,
				unsigned int copy_to_rbp_offset_for_return,
				Type* rettype,
				std::map<byte*, MemberInfo*>& replace_addrs,
				Helpers::LocalLookupTable& locals,
				Helpers::LocalLookupTable& apls,
				std::vector<byte>& code, size_t& i,
				byte il[],
				byte string_ref[]
			);
			// CompilationError CompileGenericSection(
			// 	unsigned int& locals_size,
			// 	unsigned int copy_to_rbp_offset_for_return,
			// 	Type* rettype,
			// 	std::map<byte*, MemberInfo*>& replace_addrs,
			// 	Helpers::LocalLookupTable& locals,
			// 	Helpers::LocalLookupTable& apls,
			// 	std::vector<byte>& code, size_t& i,
			// 	byte il[],
			// 	byte string_ref[],
			// 	Type* (*ResolveGenericLookup)(byte)
			// );
			CompilationError CompleteCompilation(std::map<byte*, MemberInfo*>& replace_addrs, std::map<MemberInfo*, std::vector<byte>>& dynamic_code, size_t offset_replace_addrs);
			
			~JITContext();

		private:
			std::string_view LookupString(byte il_of_string_ref[], byte string_ref[]);
			char* CreateULRString(const char* str, int len);
			byte* LogMalloc(size_t);
	};
}