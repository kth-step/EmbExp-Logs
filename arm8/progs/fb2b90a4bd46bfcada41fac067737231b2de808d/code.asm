	ldr x7, [x21,x11]
	ldr x1, [x5, #0]
	cmp x21, x1
	b.eq #0xC
	ldr x8, [x7, #6]
	b #0x8
	ldr x3, [x0]
