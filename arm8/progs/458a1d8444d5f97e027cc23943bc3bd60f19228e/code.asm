	ldr x17, [x15,x23]
	ldr x29, [x6, #0]
	cmp x15, x29
	b.eq #0xC
	ldr x6, [x17, #205]
	b #0x8
	ldr x7, [x9, #8]
