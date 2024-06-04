#include "Resolver.hpp"

#pragma once

#ifndef _WIN64
#error "No UIL JIT support for non-windows x64 platforms currently"
#endif

using byte = unsigned char;

namespace ULR::IL
{
	struct CompilationError
	{
		enum ErrorCode
		{
			None,
			TypeExpected,
			MemberExpected,
			InvalidInstr,
			LocalTypeExpected,
			InvalidTypeIdentifer		
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
		AddF,
		SubF,
		MulF,
		DivF,
		And,
		Or,
		Not,
		Xor,
		CstNC,
		LdStr,
		LdNC,
		LdFld,
		LdLoc,
		LdAPL,
		LdElem,
		LdTpO,
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
		If,

		/* Below are UIL signals, used to section code */
		BeginType,
		EndTypeMeta,
		EndType,
		BeginMethod,
		BeginCtor,
		BeginDtor,
		EndMethod,
		BeginSection,
		EndSection,
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
			~JITContext();

		private:
			std::string_view LookupString(byte il_of_string_ref[], byte string_ref[]);
	};
}