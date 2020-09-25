	ldr x27, [x0,x9]
	ldr x16, [x10, #0]
	cmp x0, x16
	b.eq #0xC
	ldr x11, [x27, #151]
	b #0x8
	ldr x23, [x23]
