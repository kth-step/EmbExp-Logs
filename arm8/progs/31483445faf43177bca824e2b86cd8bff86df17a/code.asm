	ldr x17, [x3,x16]
	ldr x23, [x25, #0]
	cmp x3, x23
	b.eq #0xC
	ldr x0, [x17, #223]
	b #0x8
	ldr x8, [x24, #8]
