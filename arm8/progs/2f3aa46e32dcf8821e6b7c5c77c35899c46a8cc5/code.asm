	ldr x16, [x5,x1]
	ldr x15, [x21, #56]
	cmp x5, x15
	b.eq #0xC
	ldr x23, [x16, #65]
	b #0x8
	ldr x27, [x1, #8]
