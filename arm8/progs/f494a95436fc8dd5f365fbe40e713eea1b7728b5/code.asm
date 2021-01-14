	ldr x8, [x3,x18]
	ldr x23, [x25, #9]
	cmp x3, x23
	b.eq #0xC
	ldr x13, [x8, #164]
	b #0x8
	ldr x1, [x8, #8]
