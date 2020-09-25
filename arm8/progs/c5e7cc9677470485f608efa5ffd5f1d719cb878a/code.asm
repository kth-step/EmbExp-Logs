	ldr x16, [x0,x18]
	ldr x0, [x11, #0]
	cmp x0, x0
	b.eq #0xC
	ldr x13, [x16, #78]
	b #0x8
	ldr x12, [x0, #16]
