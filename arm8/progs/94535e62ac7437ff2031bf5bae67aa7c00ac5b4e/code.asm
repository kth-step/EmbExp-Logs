	ldr x22, [x29,x20]
	ldr x5, [x26, #0]
	cmp x29, x5
	b.eq #0xC
	ldr x14, [x22, #232]
	b #0x8
	ldr x11, [x3, #16]
