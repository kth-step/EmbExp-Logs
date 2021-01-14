	ldr x17, [x0,x6]
	ldr x28, [x10, #83]
	cmp x0, x28
	b.eq #0xC
	ldr x21, [x17, #228]
	b #0x8
	ldr x6, [x24, #16]
