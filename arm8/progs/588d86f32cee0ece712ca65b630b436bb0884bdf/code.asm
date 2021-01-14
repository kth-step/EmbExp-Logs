	ldr x20, [x18,x10]
	ldr x3, [x16, #13]
	cmp x18, x3
	b.eq #0xC
	ldr x9, [x20, #4]
	b #0x8
	ldr x12, [x5, #8]
