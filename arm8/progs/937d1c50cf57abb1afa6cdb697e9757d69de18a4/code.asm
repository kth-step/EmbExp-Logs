	ldr x4, [x8,x3]
	ldr x27, [x14, #0]
	cmp x8, x27
	b.eq #0xC
	ldr x21, [x4, #229]
	b #0x8
	ldr x26, [x21, #8]
