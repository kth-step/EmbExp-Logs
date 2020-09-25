	ldr x11, [x18,x6]
	ldr x4, [x26, #0]
	cmp x18, x4
	b.eq #0xC
	ldr x27, [x11, #250]
	b #0x8
	ldr x2, [x27, #8]
