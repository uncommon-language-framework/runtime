# ULF Implementation Ideas

Assemblies

MyAssembly.dll
- contains a `char ulrmeta[]` global variable. Contains class info split by newlines
	- Method meta example
	- `s[System]Int32 Main([System]Array<[System]String>args);`
	- `s` for static, then `[ns]ret_type name(args...)`
		- All modifiers below
		- public -> `p`
		- private -> none, there is no other access modifier present
		- protected -> `t`
		- interface -> `e`
		- internal -> `i`
		- static -> `s`
		- readonly -> `r`
		- const -> `c`
		- virtual -> `v`
		- override -> `o`
		- abstract -> `a`
		- partial -> `l`
		- extern -> `e`
		- sealed -> `d`
		- struct -> `v`
		- for prop - get -> `g`
		- for prop - set -> `w`
		- add more or delete some unnecessary ones...
	- Note `System.Array<T>` is generic because we are using the C Blunt stdlib
- `int ulraddr[]` global variable contains member addrs from their respective offsets (if static member -> then there is no offset, if instance member, then the offset is from the base of the object ptr)
- compiler will have to optimize static calls
- the ulr should also cache some lookups
- make `ctor` a keyword (or restricted name)
- for returning value types, return a cpp type with the size of the value type (some sort of buffer inside the cpp type)
- for dynamic calls, everything is boxed, and the internals will unbox args if needed
- for overloads, use the following naming convention to be foolproof: `overloadX_nsX_...`, and have all other symbols start with their `nsX` prefixes
- For GC, it could be instantiated with addresses of stack vars as certain flags (e.g. struct here, ptr here)
	- Beware of ref ptrs within structs
- C$ compiler should pad value types itself to align so that GC can function
- Generic-in-generic - when another generic type is used within an already generic method body and the aformentioned generic type is instantiated with type arguments of the method body
	- let's also call it a generically resolved generic
- For generic-in-generic use specify name, arg numbers and symref
	- `"Name 2 [System]String 1 =GRGenericA \n"`
	- The space before the newline is important for the parser