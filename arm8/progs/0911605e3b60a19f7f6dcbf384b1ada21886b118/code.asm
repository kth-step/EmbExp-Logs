	ldr x5, [x1,x24]
	ldr x27, [x6, #0]
	cmp x1, x27
	b.eq #0xC
	ldr x29, [x5, #103]
	b #0x8
	ldr x18, [x1, #8]
