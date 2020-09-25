	ldr x8, [x17,x15]
	ldr x3, [x27, #0]
	cmp x17, x3
	b.eq #0xC
	ldr x11, [x8, #13]
	b #0x8
	ldr x11, [x18, #8]
