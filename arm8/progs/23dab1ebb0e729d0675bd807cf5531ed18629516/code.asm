	ldr x10, [x29,x5]
	ldr x27, [x12, #0]
	cmp x29, x27
	b.eq #0xC
	ldr x16, [x10, #120]
	b #0x8
	ldr x5, [x9]
