	ldr x21, [x14,x2]
	ldr x29, [x13, #103]
	cmp x14, x29
	b.eq #0xC
	ldr x13, [x21, #24]
	b #0x8
	ldr x5, [x15, #16]
