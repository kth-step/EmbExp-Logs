	ldr x4, [x28,x15]
	ldr x5, [x7, #0]
	cmp x28, x5
	b.eq #0xC
	ldr x12, [x4, #118]
	b #0x8
	ldr x16, [x17, #8]
