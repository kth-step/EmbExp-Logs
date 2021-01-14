	ldr x8, [x13,x18]
	ldr x25, [x0, #146]
	cmp x13, x25
	b.eq #0xC
	ldr x11, [x8, #250]
	b #0x8
	ldr x16, [x20]
