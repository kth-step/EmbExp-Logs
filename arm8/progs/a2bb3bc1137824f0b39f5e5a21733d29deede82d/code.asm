	ldr x20, [x15,x11]
	ldr x5, [x16, #0]
	cmp x15, x5
	b.eq #0xC
	ldr x5, [x20, #215]
	b #0x8
	ldr x27, [x3, #8]
