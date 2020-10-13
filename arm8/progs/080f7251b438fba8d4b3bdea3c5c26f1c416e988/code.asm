	ldr x26, [x0,x7]
	ldr x13, [x20, #0]
	cmp x0, x13
	b.eq #0xC
	ldr x14, [x26, #102]
	b #0x8
	ldr x24, [x4, #8]
