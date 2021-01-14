	ldr x3, [x1,x25]
	ldr x14, [x18, #187]
	cmp x1, x14
	b.eq #0xC
	ldr x29, [x3, #26]
	b #0x8
	ldr x2, [x8]
