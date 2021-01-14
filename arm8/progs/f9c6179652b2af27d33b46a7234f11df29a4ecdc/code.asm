	ldr x16, [x28,x8]
	ldr x14, [x3, #149]
	cmp x28, x14
	b.eq #0xC
	ldr x9, [x16, #237]
	b #0x8
	ldr x2, [x1]
