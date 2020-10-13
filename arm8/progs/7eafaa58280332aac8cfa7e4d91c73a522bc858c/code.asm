	ldr x6, [x26,x10]
	ldr x10, [x26, #0]
	cmp x26, x10
	b.eq #0xC
	ldr x17, [x6, #166]
	b #0x8
	ldr x16, [x13]
