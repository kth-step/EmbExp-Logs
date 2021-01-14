	ldr x5, [x9,x23]
	ldr x24, [x11, #149]
	cmp x9, x24
	b.eq #0xC
	ldr x27, [x5, #104]
	b #0x8
	ldr x9, [x4, #16]
