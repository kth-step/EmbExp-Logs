	ldr x13, [x4,x12]
	ldr x24, [x9, #0]
	cmp x4, x24
	b.eq #0xC
	ldr x2, [x13, #2]
	b #0x8
	ldr x3, [x9, #8]
