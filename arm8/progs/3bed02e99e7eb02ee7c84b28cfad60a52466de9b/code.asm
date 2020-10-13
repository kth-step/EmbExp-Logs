	ldr x2, [x24,x18]
	ldr x0, [x14, #0]
	cmp x24, x0
	b.eq #0xC
	ldr x11, [x2, #65]
	b #0x8
	ldr x22, [x6, #4]
