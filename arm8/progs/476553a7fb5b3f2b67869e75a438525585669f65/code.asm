	ldr x20, [x14,x6]
	ldr x16, [x3, #0]
	cmp x14, x16
	b.eq #0xC
	ldr x16, [x20, #66]
	b #0x8
	ldr x17, [x23, #8]
