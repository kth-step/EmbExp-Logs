	ldr x25, [x4,x5]
	ldr x27, [x16, #92]
	cmp x4, x27
	b.eq #0xC
	ldr x10, [x25, #69]
	b #0x8
	ldr x8, [x16, #16]
