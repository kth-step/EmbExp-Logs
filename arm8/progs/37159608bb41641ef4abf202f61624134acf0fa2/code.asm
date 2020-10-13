	ldr x26, [x6,x14]
	ldr x24, [x16, #0]
	cmp x6, x24
	b.eq #0xC
	ldr x11, [x26, #235]
	b #0x8
	ldr x26, [x8, #16]
