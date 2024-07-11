#include "../UIL.hpp"

namespace ULR::IL
{
	JITContext::JITContext(Resolver::ULRAPIImpl* api)
	{
		this->api = api;
		this->SystemStringType = api->GetType("[System]String", "System.Runtime.Native.dll");
	}

	std::string_view JITContext::LookupString(byte il_of_string_ref[], byte string_ref[]) // every string reference takes four bytes - two to specify the offset from string_ref and two to specify the length of the string
	{
		static_assert((sizeof(char) == 1) && (sizeof(char) == sizeof(byte)));

		uint16_t offset = *((uint16_t*) il_of_string_ref);
		uint16_t length = *(((uint16_t*) il_of_string_ref)+1);

		return std::string_view(((char*) string_ref)+offset, length);
	}

	char* JITContext::CreateULRString(const char* str, int len)
	{
		size_t obj_size = sizeof(SystemStringType)+sizeof(int)+(sizeof(char)*len);

		Type** str_obj = (Type**) malloc(obj_size);

		malloc_alloced.push_back(str_obj); // register str_obj's allocation

		str_obj[0] = SystemStringType;

		int* str_obj_offset_for_len_place = (int*) (str_obj+1);

		str_obj_offset_for_len_place[0] = len;

		char* str_obj_offset_for_char_copy = (char*) (str_obj_offset_for_len_place+1);

		memcpy(str_obj_offset_for_char_copy, str, len*sizeof(char));

		return (char*) str_obj;
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