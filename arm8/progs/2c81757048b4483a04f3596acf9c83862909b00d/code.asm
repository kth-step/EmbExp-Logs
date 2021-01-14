	ldr x21, [x5,x5]
	ldr x8, [x11, #8]
	cmp x5, x8
	b.eq #0xC
	ldr x11, [x21, #253]
	b #0x8
	ldr x3, [x22]
