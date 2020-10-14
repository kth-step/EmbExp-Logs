	ldr x26, [x3,x9]
	ldr x2, [x26, #0]
	cmp x3, x2
	b.eq #0xC
	ldr x20, [x26, #168]
	b #0x8
	ldr x13, [x0]
