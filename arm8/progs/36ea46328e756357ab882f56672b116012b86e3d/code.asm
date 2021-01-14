	ldr x21, [x22,x5]
	ldr x26, [x9, #139]
	cmp x22, x26
	b.eq #0xC
	ldr x29, [x21, #199]
	b #0x8
	ldr x2, [x11, #8]
