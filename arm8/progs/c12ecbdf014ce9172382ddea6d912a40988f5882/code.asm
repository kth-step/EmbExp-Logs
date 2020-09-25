	ldr x14, [x27,x25]
	ldr x6, [x1, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x16, [x14, #147]
	b #0x8
	ldr x14, [x26, #8]
