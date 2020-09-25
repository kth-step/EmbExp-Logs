	ldr x17, [x20,x25]
	ldr x13, [x14, #0]
	cmp x20, x13
	b.eq #0xC
	ldr x10, [x17, #253]
	b #0x8
	ldr x17, [x17, #8]
