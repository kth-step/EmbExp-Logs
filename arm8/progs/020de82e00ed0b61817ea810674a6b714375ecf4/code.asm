	ldr x11, [x10,x23]
	ldr x1, [x7, #39]
	cmp x10, x1
	b.eq #0xC
	ldr x1, [x11, #18]
	b #0x8
	ldr x27, [x15, #8]
