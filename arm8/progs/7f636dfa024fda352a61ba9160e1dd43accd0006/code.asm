	ldr x21, [x2,x22]
	ldr x0, [x27, #0]
	cmp x2, x0
	b.eq #0xC
	ldr x15, [x21, #198]
	b #0x8
	ldr x11, [x10]
