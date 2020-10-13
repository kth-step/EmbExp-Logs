	ldr x26, [x19,x5]
	ldr x16, [x9, #0]
	cmp x19, x16
	b.eq #0xC
	ldr x2, [x26, #184]
	b #0x8
	ldr x29, [x11]
