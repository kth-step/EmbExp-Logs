	ldr x8, [x18,x22]
	ldr x24, [x3, #62]
	cmp x18, x24
	b.eq #0xC
	ldr x23, [x8, #37]
	b #0x8
	ldr x23, [x0, #8]
