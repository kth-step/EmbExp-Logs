	ldr x9, [x15,x1]
	ldr x16, [x12, #0]
	cmp x15, x16
	b.eq #0xC
	ldr x20, [x9, #227]
	b #0x8
	ldr x13, [x4, #8]
