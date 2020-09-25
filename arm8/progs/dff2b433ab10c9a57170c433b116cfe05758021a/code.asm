	ldr x7, [x18,x6]
	ldr x3, [x27, #0]
	cmp x18, x3
	b.eq #0xC
	ldr x29, [x7, #43]
	b #0x8
	ldr x4, [x26, #8]
