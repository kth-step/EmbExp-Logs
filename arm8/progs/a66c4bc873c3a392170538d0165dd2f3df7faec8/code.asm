	ldr x15, [x22,x22]
	ldr x3, [x11, #0]
	cmp x22, x3
	b.eq #0xC
	ldr x8, [x15, #199]
	b #0x8
	ldr x2, [x24, #8]
