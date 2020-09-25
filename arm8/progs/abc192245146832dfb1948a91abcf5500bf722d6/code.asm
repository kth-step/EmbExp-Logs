	ldr x12, [x11,x27]
	ldr x3, [x13, #0]
	cmp x11, x3
	b.eq #0xC
	ldr x20, [x12, #205]
	b #0x8
	ldr x6, [x0, #4]
