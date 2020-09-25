	ldr x16, [x27,x20]
	ldr x27, [x4, #0]
	cmp x27, x27
	b.eq #0xC
	ldr x11, [x16, #179]
	b #0x8
	ldr x21, [x13]
