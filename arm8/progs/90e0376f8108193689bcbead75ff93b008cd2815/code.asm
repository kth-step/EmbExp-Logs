	ldr x3, [x17,x26]
	ldr x8, [x7, #0]
	cmp x17, x8
	b.eq #0xC
	ldr x1, [x3, #103]
	b #0x8
	ldr x7, [x12, #4]
