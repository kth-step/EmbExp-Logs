	ldr x8, [x15,x20]
	ldr x1, [x27, #0]
	cmp x15, x1
	b.eq #0xC
	ldr x22, [x8, #49]
	b #0x8
	ldr x11, [x21]
