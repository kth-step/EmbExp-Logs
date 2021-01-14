	ldr x12, [x16,x9]
	ldr x3, [x9, #235]
	cmp x16, x3
	b.eq #0xC
	ldr x1, [x12, #93]
	b #0x8
	ldr x1, [x26]
