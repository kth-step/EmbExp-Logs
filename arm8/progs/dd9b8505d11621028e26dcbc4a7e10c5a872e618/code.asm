	ldr x12, [x1,x13]
	ldr x18, [x7, #0]
	cmp x1, x18
	b.eq #0xC
	ldr x11, [x12, #204]
	b #0x8
	ldr x2, [x24]
