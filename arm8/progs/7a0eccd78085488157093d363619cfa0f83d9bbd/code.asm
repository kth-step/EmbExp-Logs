	ldr x26, [x11,x5]
	ldr x6, [x27, #0]
	cmp x11, x6
	b.eq #0xC
	ldr x4, [x26, #24]
	b #0x8
	ldr x12, [x20, #8]
