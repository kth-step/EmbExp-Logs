	ldr x18, [x16,x3]
	ldr x2, [x12, #0]
	cmp x16, x2
	b.eq #0xC
	ldr x0, [x18, #255]
	b #0x8
	ldr x1, [x29]
