	ldr x18, [x8,x13]
	ldr x9, [x15, #0]
	cmp x8, x9
	b.eq #0xC
	ldr x9, [x18, #4]
	b #0x8
	ldr x18, [x16, #8]
