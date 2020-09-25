	ldr x8, [x17,x16]
	ldr x23, [x9, #0]
	cmp x17, x23
	b.eq #0xC
	ldr x6, [x8, #244]
	b #0x8
	ldr x23, [x11, #4]
