	ldr x6, [x14,x20]
	ldr x23, [x5, #0]
	cmp x14, x23
	b.eq #0xC
	ldr x27, [x6, #250]
	b #0x8
	ldr x14, [x25, #4]
