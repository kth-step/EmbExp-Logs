	ldr x15, [x13,x20]
	ldr x29, [x20, #0]
	cmp x13, x29
	b.eq #0xC
	ldr x13, [x15, #127]
	b #0x8
	ldr x16, [x14]
