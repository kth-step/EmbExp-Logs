	ldr x6, [x8,x11]
	ldr x10, [x5, #58]
	cmp x8, x10
	b.eq #0xC
	ldr x23, [x6, #214]
	b #0x8
	ldr x6, [x22, #8]
