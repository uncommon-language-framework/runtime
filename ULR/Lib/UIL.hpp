#include "Resolver.hpp"
#include <stack>

#pragma once

#ifndef _WIN64
#error "No UIL JIT support for non-windows x64 platforms currently"
#endif



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
			};

			ExpressionType expr_type;
		};

		using EvalStack = std::stack<StackValueExpression>;

		struct LocalInfo
		{
			int offset;
			size_t size;
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
		CstNV,
		LdStr, // to fix GC problem with ldstr, maybe allocate separately (on own) & delete at the end of JITContext
		LdNC,
		LdFld,
		LdLoc,
		LdAPL,
		LdElem,
		LdITO, // may remove, probably useless
		LdETO, // may remove, may not be feasible (also same GC problem?)
		VTSCp, // ValueType Stack Copy
		Call,
		Box,
		UnBox,
		VCall,
		StFld,
		StLoc,
		StAPL,
		StElem,
		New,
		NewArr,
		Ret,
		
		/* Jumping Instructions */
		Jmp,
		JNE,
		JEq,
		JLT,
		JGT,
		JLU,
		JGU,
		JLE,
		JGE,
		JLEU,
		JGEU,
		JTr,
		JFl,

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

		FieldDecl,
		LocalDecl,
	};

	enum Flags : byte
	{
		Static,
		Instance,
		LocalVariable,
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


	class JITContext
	{
		std::vector<void*> virt_alloced;
		std::vector<void*> malloc_alloced;
		Resolver::ULRAPIImpl* api;
		Type* SystemStringType;

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
			
			CompilationError CompileSection( // TODO: refactor so that this just maps to a CompileGenericSection call with no generic resolver passed
				unsigned int& locals_size,
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