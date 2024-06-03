#define TEST(condition, num) if (condition) std::cout << "+ Test " << num << " passed!\n"; else std::cout << "- Test " << num << " failed :(\n";

#include <StdULR.hpp>
#include <ulr/UIL.hpp>
#include <iostream>

using namespace ULR::IL;

BEGIN_ULR_EXPORT

#define ByteOf(num, n) ((byte*) num)[n]
#define PlaceShort(num) ByteOf(num, 0), ByteOf(num, 1)
#define PlaceLong(num) ByteOf(num, 0), ByteOf(num, 1), ByteOf(num, 2), ByteOf(num, 3)

void InitAssembly(ULRAPIImpl* ulr)
{
	internal_api = ulr;
}

void overload0_ns0_Program_ctor(char* self) {}

sizeof_ns1_System_Int32 overload0_ns0_Program_Main(char* argv)
{
	Assembly* jitasm = new Assembly(strdup("JitAssembly"), strdup(""), nullptr, 0, nullptr, nullptr, nullptr);

	(*internal_api->read_assemblies)[jitasm->name] = jitasm;
	(*internal_api->assemblies)[jitasm->name] = jitasm;

	uint32_t size = 8;
	uint16_t name_strref_size = 20;
	uint16_t base_strref_size = 14;
	uint16_t methodname_strref_offset = 34;
	uint16_t methodname_strref_size = 8;
	uint16_t rettype_strref_offset = 42;
	uint16_t rettype_strref_len = 13;

	uint16_t arg1_strref_offset = 42; // both same as rettype
	uint16_t arg1_strref_len = 13;
	uint16_t arg2_strref_offset = 42;
	uint16_t arg2_strref_len = 13;

	uint32_t method_size = 0; // TODO

	Modifiers static_modifiers = (Modifiers) (Modifiers::Private | Modifiers::Static);

	byte il[] = {
		OpCodes::BeginType,
		TypeType::Class,
		0, 0, // modifiers
		PlaceLong(size), // size (filled later)
		0, 0, PlaceShort(name_strref_size), // string ref
		PlaceShort(name_strref_size), PlaceShort(base_strref_size), // base string ref
		OpCodes::EndTypeMeta,
		OpCodes::BeginMethod,
		0, // overload number
		PlaceShort(methodname_strref_offset), PlaceShort(methodname_strref_size), // method name string ref
		PlaceShort(static_modifiers), // private, static
		PlaceShort(rettype_strref_offset), PlaceShort(rettype_strref_len), // return type strref
		PlaceLong(method_size),
		PlaceShort(arg1_strref_offset), PlaceShort(arg1_strref_len), // first arg type
		PlaceShort(arg2_strref_offset), PlaceShort(arg2_strref_len), // second arg type
		OpCodes::EndSection, // end method signature

		// BEGIN METHOD BODY
		OpCodes::LdAPL, 0, // ldapl 0
		OpCodes::LdAPL, 1, // ldapl 1
		OpCodes::Add, NumericalTypeIdentifier::Int32, // add i32
		OpCodes::Ret, // ret
		OpCodes::EndMethod, // END METHOD BODY
		OpCodes::EndType,
		OpCodes::EndAssembly
	};

	byte string_ref[] = "[MyNamespace]MyClass[System]ObjectMyMethod[System]Int32";

	JITContext jit(internal_api);

	auto error = jit.Compile(jitasm, il, string_ref);

	if (error)
	{
		std::cerr
			<< "ULR JIT Error: "
			<< error.error
			<< " at byte ["
			<< (void*) error.byte_at
			<< "] (il["
			<< (void*) (error.byte_at-il)
			<< "])\n";

		return 1;
	}

	sizeof_ns1_System_Int32 x = 1;
	sizeof_ns1_System_Int32 y = 4;

	Type* SystemInt32 = internal_api->GetType("[System]Int32", "System.Runtime.Native.dll");

	MethodInfo* func = internal_api->GetMethod(
		internal_api->GetType("[MyNamespace]MyClass", "JitAssembly"),
		"MyMethod", { SystemInt32, SystemInt32 },
		BindingFlags::Static || BindingFlags::NonPublic
	);

	int res = internal_api->UnBox<sizeof_ns1_System_Int32>(
		func->Invoke(
			nullptr,
			{ internal_api->Box(x, SystemInt32), internal_api->Box(y, SystemInt32) }
		)
	);

	TEST(res == 5, 0); // 1+4 = 5

	return 0;
}

char ulrmeta[] = "pc[]Program:[System]Object,$8;.ctor p();.entr s[System]Int32 Main([System]String[]);\n";

void* ulraddr[] = {
	(void*) overload0_ns0_Program_ctor,
	(void*) overload0_ns0_Program_Main
};

char* ulrdeps[] = { nullptr };

END_ULR_EXPORT
