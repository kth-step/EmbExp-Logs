	ldr x22, [x24,x15]
	ldr x13, [x3, #0]
	cmp x24, x13
	b.eq #0xC
	ldr x1, [x22, #139]
	b #0x8
	ldr x21, [x9, #4]
