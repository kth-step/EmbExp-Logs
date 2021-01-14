	ldr x15, [x26,x2]
	ldr x0, [x16, #69]
	cmp x26, x0
	b.eq #0xC
	ldr x27, [x15, #228]
	b #0x8
	ldr x15, [x27, #16]
