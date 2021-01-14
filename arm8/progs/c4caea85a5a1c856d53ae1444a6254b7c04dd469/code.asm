	ldr x22, [x26,x11]
	ldr x6, [x25, #75]
	cmp x26, x6
	b.eq #0xC
	ldr x2, [x22, #114]
	b #0x8
	ldr x1, [x14]
