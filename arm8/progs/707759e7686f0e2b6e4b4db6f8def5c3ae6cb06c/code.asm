	ldr x7, [x23,x11]
	ldr x9, [x15, #0]
	cmp x23, x9
	b.eq #0xC
	ldr x17, [x7, #255]
	b #0x8
	ldr x27, [x7, #8]
