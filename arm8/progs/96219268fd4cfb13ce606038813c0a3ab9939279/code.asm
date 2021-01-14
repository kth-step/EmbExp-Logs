	ldr x4, [x13,x3]
	ldr x6, [x26, #1]
	cmp x13, x6
	b.eq #0xC
	ldr x27, [x4, #166]
	b #0x8
	ldr x18, [x8, #8]
