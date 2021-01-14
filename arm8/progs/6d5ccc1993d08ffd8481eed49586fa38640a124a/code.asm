	ldr x13, [x14,x16]
	ldr x27, [x19, #251]
	cmp x14, x27
	b.eq #0xC
	ldr x4, [x13, #229]
	b #0x8
	ldr x8, [x15, #8]
