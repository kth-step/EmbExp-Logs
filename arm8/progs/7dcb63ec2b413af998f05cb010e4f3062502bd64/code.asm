	ldr x20, [x27,x7]
	ldr x23, [x15, #0]
	cmp x27, x23
	b.eq #0xC
	ldr x5, [x20, #143]
	b #0x8
	ldr x11, [x13, #8]
