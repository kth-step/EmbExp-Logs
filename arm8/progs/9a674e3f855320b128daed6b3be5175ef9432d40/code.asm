	ldr x25, [x3,x14]
	ldr x12, [x15, #26]
	cmp x3, x12
	b.eq #0xC
	ldr x16, [x25, #149]
	b #0x8
	ldr x29, [x4, #16]
