	ldr x22, [x11,x3]
	ldr x17, [x6, #250]
	cmp x11, x17
	b.eq #0xC
	ldr x26, [x22, #124]
	b #0x8
	ldr x20, [x13, #4]
