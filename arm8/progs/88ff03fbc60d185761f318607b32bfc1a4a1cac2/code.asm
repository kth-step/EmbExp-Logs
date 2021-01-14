	ldr x9, [x12,x13]
	ldr x12, [x1, #199]
	cmp x12, x12
	b.eq #0xC
	ldr x8, [x9, #62]
	b #0x8
	ldr x20, [x21]
