	ldr x6, [x29,x23]
	ldr x18, [x5, #177]
	cmp x29, x18
	b.eq #0xC
	ldr x20, [x6, #13]
	b #0x8
	ldr x2, [x5]
