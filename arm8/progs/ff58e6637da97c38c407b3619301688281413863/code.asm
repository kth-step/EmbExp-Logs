	ldr x4, [x6,x21]
	ldr x2, [x23, #0]
	cmp x6, x2
	b.eq #0xC
	ldr x16, [x4, #59]
	b #0x8
	ldr x17, [x20, #8]
