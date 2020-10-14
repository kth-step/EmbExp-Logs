	ldr x11, [x6,x23]
	ldr x6, [x26, #0]
	cmp x6, x6
	b.eq #0xC
	ldr x23, [x11, #249]
	b #0x8
	ldr x21, [x14, #8]
