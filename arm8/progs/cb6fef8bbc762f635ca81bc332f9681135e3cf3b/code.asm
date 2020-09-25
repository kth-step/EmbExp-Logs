	ldr x22, [x3,x0]
	ldr x12, [x10, #0]
	cmp x3, x12
	b.eq #0xC
	ldr x8, [x22, #149]
	b #0x8
	ldr x11, [x26, #16]
