	ldr x20, [x8,x14]
	ldr x24, [x21, #44]
	cmp x8, x24
	b.eq #0xC
	ldr x23, [x20, #194]
	b #0x8
	ldr x21, [x3, #8]
