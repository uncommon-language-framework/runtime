#include "../UIL.hpp"

#define HELPER_MARKER(num)
#define TODO_ADD_ASM add asm bytes;

namespace ULR::IL
{
	JITContext::JITContext(Resolver::ULRAPIImpl* api)
	{
		this->api = api;
		this->special_string_MAKE_FROM_LITERAL = (char* (*)(const char*, int)) api->LocateSymbol(api->LocateAssembly("System.Runtime.Native.dll"), "special_string_MAKE_FROM_LITERAL");
	}

	std::string_view JITContext::LookupString(byte il_of_string_ref[], byte string_ref[]) // every string reference takes four bytes - two to specify the offset from string_ref and two to specify the length of the string
	{
		static_assert((sizeof(char) == 1) && (sizeof(char) == sizeof(byte)));

		uint16_t offset = *((uint16_t*) il_of_string_ref);
		uint16_t length = *(((uint16_t*) il_of_string_ref)+1);

		return std::string_view(((char*) string_ref)+offset, length);
	}

	CompilationError JITContext::Compile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		return StackBaseCompile(meta_asm, il, string_ref);
	}

	// TODO: add support for ctors and dtors
	// TODO: make sure JIT aligns all pointers to eight bytes OR think of a better soln
	// TODO: add support for generic IL
	// TODO: add support for float operations (within the switch case statements)
	// TODO: prepare JIT for multiple scopes
	// NOTE: consider using std::list due to all the insertions and lack of random access
	// NOTE: this compiles for little endian, check system endianness and use correct endian -- upon further thought this may not be an issue since endianness would also apply to the assembled assembly
	CompilationError JITContext::StackBaseCompile(Assembly* meta_asm, byte il[], byte string_ref[])
	{
		Helpers::EvalStack eval_stack;

		size_t i = 0;

		std::map<byte*, MemberInfo*> replace_addrs;
		std::map<MemberInfo*, std::vector<byte>> dynamic_code;

		/* FIRST PASS - MAP OUT ASSEMBLY METADATA */
		while (il[i] != EndAssembly)
		{
			if (il[i] != BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++; // skip BeginType signal

			auto error = ReadTypeMeta(meta_asm, i, il, string_ref);

			if (error) return error;
		}

		(*api->read_assemblies)[meta_asm->name] = meta_asm;
		(*api->assemblies)[meta_asm->name] = meta_asm;

		i = 0;

		/* SECOND PASS - IL TO ASSEMBLED BYTES */
		while (il[i] != EndAssembly)
		{
			if (il[i] != BeginType)
			{
				return { "Expected type declaration signal", CompilationError::ErrorCode::TypeExpected, &il[i] };
			}

			i++; // skip BeginType signal

			auto error = CompileType(
				meta_asm,
				replace_addrs,
				dynamic_code,
				i,
				il,
				string_ref
			);

			if (error) return error;
		}

		auto error = CompleteCompilation(replace_addrs, dynamic_code); // third pass

		if (error) return error;

		return NoError;
	}

	CompilationError JITContext::CompleteCompilation(std::map<byte*, MemberInfo*>& replace_addrs, std::map<MemberInfo*, std::vector<byte>>& dynamic_code)
	{
		/* THIRD PASS - RESOLVE FUNCTION AND FIELD ADDRS */
		for (const auto& entry : replace_addrs)
		{
			switch (entry.second->decl_type)
			{
				case Method:
					memcpy(entry.first, &((MethodInfo*) entry.second)->offset, sizeof(void*));
					break;
				case Field:
					memcpy(entry.first, &((FieldInfo*) entry.second)->offset, sizeof(void*));
 					break;
				case Ctor:
					memcpy(entry.first, &((ConstructorInfo*) entry.second)->offset, sizeof(void*));
					break;
				default: break;
			}
		}

		/* THIRD PASS - COPY BYTES OVER */
		for (auto& entry : dynamic_code)
		{
			void* offset;
			
			switch (entry.first->decl_type)
			{
				case Method:
					offset = ((MethodInfo*) entry.first)->offset;
					break;
				case Ctor:
					offset = ((ConstructorInfo*) entry.first)->offset;
 					break;
				case Dtor:
					offset = ((DestructorInfo*) entry.first)->offset;
					break;
				default: break;
			}

			DWORD discard;
			size_t func_size = entry.second.size();

			memcpy(offset, &entry.second[0], func_size);
			VirtualProtect(offset, func_size, PAGE_EXECUTE_READ, &discard);
		}

		return NoError;
	}

	JITContext::~JITContext()
	{
		for (const auto alloced : virt_alloced)
		{
			#ifdef _WIN64
				VirtualFree(alloced, 0, MEM_RELEASE);
			#else

			#error "No UIL JIT support for non-windows x64 platforms currently"

			#endif
		}

		for (const auto alloced : malloc_alloced)
		{
			free(alloced);
		}
	}
}