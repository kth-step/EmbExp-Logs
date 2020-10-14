	ldr x11, [x16,x3]
	ldr x19, [x12, #0]
	cmp x16, x19
	b.eq #0xC
	ldr x14, [x11, #63]
	b #0x8
	ldr x19, [x19, #8]
