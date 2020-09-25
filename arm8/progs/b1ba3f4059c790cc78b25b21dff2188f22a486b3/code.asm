	ldr x9, [x5,x23]
	ldr x8, [x27, #0]
	cmp x5, x8
	b.eq #0xC
	ldr x11, [x9, #187]
	b #0x8
	ldr x9, [x25, #4]
