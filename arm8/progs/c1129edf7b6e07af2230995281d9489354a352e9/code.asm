	ldr x18, [x5,x29]
	ldr x17, [x1, #6]
	cmp x5, x17
	b.eq #0xC
	ldr x16, [x18, #43]
	b #0x8
	ldr x1, [x16]
