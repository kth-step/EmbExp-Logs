	ldr x28, [x0,x10]
	ldr x25, [x21, #183]
	cmp x0, x25
	b.eq #0xC
	ldr x7, [x28, #198]
	b #0x8
	ldr x27, [x6]
