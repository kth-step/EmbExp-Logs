	ldr x20, [x24,x12]
	ldr x17, [x25, #107]
	cmp x24, x17
	b.eq #0xC
	ldr x3, [x20, #232]
	b #0x8
	ldr x6, [x14]
