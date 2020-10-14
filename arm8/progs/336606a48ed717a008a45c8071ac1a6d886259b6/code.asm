	ldr x11, [x6,x20]
	ldr x6, [x19, #0]
	cmp x6, x6
	b.eq #0xC
	ldr x7, [x11, #232]
	b #0x8
	ldr x1, [x12, #16]
