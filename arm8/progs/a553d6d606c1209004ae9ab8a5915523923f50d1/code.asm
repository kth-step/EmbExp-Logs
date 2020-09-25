	ldr x13, [x0,x20]
	ldr x16, [x1, #0]
	cmp x0, x16
	b.eq #0xC
	ldr x1, [x13, #192]
	b #0x8
	ldr x13, [x8]
