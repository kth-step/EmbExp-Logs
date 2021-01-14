	ldr x17, [x25,x6]
	ldr x10, [x8, #166]
	cmp x25, x10
	b.eq #0xC
	ldr x6, [x17, #85]
	b #0x8
	ldr x21, [x3, #8]
