	ldr x16, [x13,x18]
	ldr x5, [x3, #94]
	cmp x13, x5
	b.eq #0xC
	ldr x29, [x16, #72]
	b #0x8
	ldr x6, [x15, #8]
