	ldr x2, [x6,x10]
	ldr x18, [x13, #0]
	cmp x6, x18
	b.eq #0xC
	ldr x0, [x2, #82]
	b #0x8
	ldr x14, [x8, #4]
