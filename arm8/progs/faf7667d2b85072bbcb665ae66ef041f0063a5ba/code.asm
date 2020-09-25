	ldr x27, [x23,x6]
	ldr x3, [x10, #0]
	cmp x23, x3
	b.eq #0xC
	ldr x11, [x27, #21]
	b #0x8
	ldr x7, [x6, #8]
