	ldr x17, [x8,x20]
	ldr x5, [x24, #232]
	cmp x8, x5
	b.eq #0xC
	ldr x28, [x17, #13]
	b #0x8
	ldr x21, [x8]
