	ldr x18, [x20,x21]
	ldr x7, [x21, #0]
	cmp x20, x7
	b.eq #0xC
	ldr x16, [x18, #53]
	b #0x8
	ldr x7, [x13, #8]
