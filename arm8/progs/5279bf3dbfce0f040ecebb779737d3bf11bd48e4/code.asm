	ldr x26, [x6,x0]
	ldr x3, [x26, #0]
	cmp x6, x3
	b.eq #0xC
	ldr x1, [x26, #82]
	b #0x8
	ldr x14, [x2, #16]
