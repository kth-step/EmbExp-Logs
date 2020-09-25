	ldr x4, [x6,x3]
	ldr x9, [x13, #0]
	cmp x6, x9
	b.eq #0xC
	ldr x14, [x4, #34]
	b #0x8
	ldr x18, [x26, #4]
