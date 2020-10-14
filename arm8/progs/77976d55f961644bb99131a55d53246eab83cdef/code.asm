	ldr x17, [x11,x11]
	ldr x16, [x7, #0]
	cmp x11, x16
	b.eq #0xC
	ldr x5, [x17, #243]
	b #0x8
	ldr x5, [x21, #4]
