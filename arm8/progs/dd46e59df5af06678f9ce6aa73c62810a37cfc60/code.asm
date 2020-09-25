	ldr x24, [x21,x4]
	ldr x16, [x14, #0]
	cmp x21, x16
	b.eq #0xC
	ldr x8, [x24, #132]
	b #0x8
	ldr x21, [x3]
