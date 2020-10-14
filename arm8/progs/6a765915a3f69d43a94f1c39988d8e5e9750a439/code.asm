	ldr x5, [x8,x0]
	ldr x8, [x29, #0]
	cmp x8, x8
	b.eq #0xC
	ldr x2, [x5, #57]
	b #0x8
	ldr x23, [x13, #4]
