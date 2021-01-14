	ldr x8, [x11,x18]
	ldr x13, [x5, #174]
	cmp x11, x13
	b.eq #0xC
	ldr x13, [x8, #139]
	b #0x8
	ldr x6, [x16]
