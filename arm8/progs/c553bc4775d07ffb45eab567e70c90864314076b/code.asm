	ldr x5, [x17,x17]
	ldr x7, [x1, #0]
	cmp x17, x7
	b.eq #0xC
	ldr x11, [x5, #11]
	b #0x8
	ldr x18, [x8, #8]
