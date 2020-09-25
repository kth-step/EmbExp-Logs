	ldr x19, [x15,x3]
	ldr x2, [x11, #0]
	cmp x15, x2
	b.eq #0xC
	ldr x6, [x19, #165]
	b #0x8
	ldr x1, [x18]
