	ldr x10, [x18,x5]
	ldr x13, [x3, #0]
	cmp x18, x13
	b.eq #0xC
	ldr x29, [x10, #127]
	b #0x8
	ldr x5, [x19]
