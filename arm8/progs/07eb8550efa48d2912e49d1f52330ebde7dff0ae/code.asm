	ldr x18, [x5,x10]
	ldr x6, [x23, #0]
	cmp x5, x6
	b.eq #0xC
	ldr x3, [x18, #48]
	b #0x8
	ldr x12, [x9, #4]
