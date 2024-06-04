class MyType:
	static [System]Int32 MyMethod([System]Int32, [System]Int32):
		ldapl 0
		ldapl 1
		add i32
		ldnc i32 2
		mul i32
		ret