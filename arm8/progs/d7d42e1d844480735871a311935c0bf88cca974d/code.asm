	ldr x17, [x29,x18]
	ldr x28, [x14, #0]
	cmp x29, x28
	b.eq #0xC
	ldr x8, [x17, #232]
	b #0x8
	ldr x29, [x23]
