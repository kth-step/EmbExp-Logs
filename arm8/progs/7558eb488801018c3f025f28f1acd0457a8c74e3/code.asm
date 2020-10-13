	ldr x9, [x23,x12]
	ldr x2, [x11, #0]
	cmp x23, x2
	b.eq #0xC
	ldr x21, [x9, #6]
	b #0x8
	ldr x28, [x7, #4]
