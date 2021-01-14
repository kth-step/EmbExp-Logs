	ldr x21, [x17,x12]
	ldr x23, [x9, #93]
	cmp x17, x23
	b.eq #0xC
	ldr x8, [x21, #232]
	b #0x8
	ldr x14, [x19, #8]
