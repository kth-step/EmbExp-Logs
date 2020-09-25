	ldr x11, [x27,x12]
	ldr x13, [x25, #0]
	cmp x27, x13
	b.eq #0xC
	ldr x13, [x11, #206]
	b #0x8
	ldr x29, [x17, #8]
