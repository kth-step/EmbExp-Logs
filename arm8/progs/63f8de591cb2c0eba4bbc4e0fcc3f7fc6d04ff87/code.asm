	ldr x11, [x3,x18]
	ldr x12, [x13, #199]
	cmp x3, x12
	b.eq #0xC
	ldr x18, [x11, #86]
	b #0x8
	ldr x0, [x6]
