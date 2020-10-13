	ldr x11, [x26,x23]
	ldr x18, [x8, #0]
	cmp x26, x18
	b.eq #0xC
	ldr x13, [x11, #244]
	b #0x8
	ldr x3, [x1]
