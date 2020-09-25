	ldr x24, [x9,x15]
	ldr x2, [x0, #0]
	cmp x9, x2
	b.eq #0xC
	ldr x13, [x24, #44]
	b #0x8
	ldr x3, [x16, #8]
