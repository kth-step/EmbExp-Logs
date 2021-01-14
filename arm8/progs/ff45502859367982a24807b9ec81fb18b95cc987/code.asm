	ldr x16, [x13,x11]
	ldr x23, [x1, #203]
	cmp x13, x23
	b.eq #0xC
	ldr x2, [x16, #127]
	b #0x8
	ldr x23, [x28, #8]
