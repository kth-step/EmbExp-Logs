	ldr x6, [x22,x4]
	ldr x27, [x6, #107]
	cmp x22, x27
	b.eq #0xC
	ldr x26, [x6, #106]
	b #0x8
	ldr x10, [x11, #8]
