	ldr x17, [x9,x12]
	ldr x6, [x18, #26]
	cmp x9, x6
	b.eq #0xC
	ldr x14, [x17, #150]
	b #0x8
	ldr x7, [x1, #8]
