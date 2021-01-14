	ldr x29, [x8,x26]
	ldr x20, [x2, #244]
	cmp x8, x20
	b.eq #0xC
	ldr x16, [x29, #228]
	b #0x8
	ldr x26, [x29]
