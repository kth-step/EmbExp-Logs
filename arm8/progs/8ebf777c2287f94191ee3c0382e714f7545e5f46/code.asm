	ldr x18, [x2,x16]
	ldr x27, [x11, #30]
	cmp x2, x27
	b.eq #0xC
	ldr x26, [x18, #8]
	b #0x8
	ldr x22, [x20, #4]
