	ldr x25, [x5,x5]
	ldr x13, [x17, #250]
	cmp x5, x13
	b.eq #0xC
	ldr x21, [x25, #138]
	b #0x8
	ldr x4, [x27, #8]
