	ldr x16, [x14,x11]
	ldr x23, [x6, #0]
	cmp x14, x23
	b.eq #0xC
	ldr x27, [x16, #40]
	b #0x8
	ldr x16, [x5]
