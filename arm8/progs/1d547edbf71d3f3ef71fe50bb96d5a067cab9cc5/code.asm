	ldr x26, [x29,x3]
	ldr x18, [x9, #102]
	cmp x29, x18
	b.eq #0xC
	ldr x14, [x26, #132]
	b #0x8
	ldr x5, [x14, #8]
