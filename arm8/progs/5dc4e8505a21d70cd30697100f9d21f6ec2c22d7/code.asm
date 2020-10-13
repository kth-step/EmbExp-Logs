	ldr x4, [x19,x14]
	ldr x29, [x5, #0]
	cmp x19, x29
	b.eq #0xC
	ldr x14, [x4, #227]
	b #0x8
	ldr x21, [x7, #8]
