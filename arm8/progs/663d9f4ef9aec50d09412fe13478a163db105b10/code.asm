	ldr x6, [x11,x10]
	ldr x13, [x7, #35]
	cmp x11, x13
	b.eq #0xC
	ldr x13, [x6, #249]
	b #0x8
	ldr x21, [x29]
