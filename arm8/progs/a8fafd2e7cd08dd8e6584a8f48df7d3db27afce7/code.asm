	ldr x8, [x15,x14]
	ldr x15, [x27, #255]
	cmp x15, x15
	b.eq #0xC
	ldr x29, [x8, #37]
	b #0x8
	ldr x3, [x11, #4]
