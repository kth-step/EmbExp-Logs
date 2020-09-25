	ldr x13, [x22,x3]
	ldr x3, [x11, #0]
	cmp x22, x3
	b.eq #0xC
	ldr x11, [x13, #92]
	b #0x8
	ldr x8, [x10]
