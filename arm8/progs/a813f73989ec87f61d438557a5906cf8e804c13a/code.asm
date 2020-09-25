	ldr x8, [x13,x11]
	ldr x11, [x14, #0]
	cmp x13, x11
	b.eq #0xC
	ldr x2, [x8, #127]
	b #0x8
	ldr x18, [x26, #8]
