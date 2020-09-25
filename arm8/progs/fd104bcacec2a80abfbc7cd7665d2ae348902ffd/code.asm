	ldr x21, [x27,x25]
	ldr x24, [x6, #0]
	cmp x27, x24
	b.eq #0xC
	ldr x2, [x21, #199]
	b #0x8
	ldr x1, [x1]
