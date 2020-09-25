	ldr x5, [x19,x20]
	ldr x27, [x5, #0]
	cmp x19, x27
	b.eq #0xC
	ldr x22, [x5, #228]
	b #0x8
	ldr x11, [x0]
