	ldr x24, [x6,x13]
	ldr x26, [x8, #122]
	cmp x6, x26
	b.eq #0xC
	ldr x7, [x24, #185]
	b #0x8
	ldr x9, [x3, #8]
