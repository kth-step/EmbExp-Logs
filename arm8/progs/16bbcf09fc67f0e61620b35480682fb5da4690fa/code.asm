	ldr x10, [x26,x13]
	ldr x27, [x4, #0]
	cmp x26, x27
	b.eq #0xC
	ldr x21, [x10, #25]
	b #0x8
	ldr x5, [x25, #16]
