	ldr x10, [x26,x29]
	ldr x15, [x19, #0]
	cmp x26, x15
	b.eq #0xC
	ldr x3, [x10, #52]
	b #0x8
	ldr x29, [x16, #8]
