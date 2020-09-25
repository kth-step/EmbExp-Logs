	ldr x17, [x20,x15]
	ldr x9, [x7, #0]
	cmp x20, x9
	b.eq #0xC
	ldr x1, [x17, #119]
	b #0x8
	ldr x0, [x19]
