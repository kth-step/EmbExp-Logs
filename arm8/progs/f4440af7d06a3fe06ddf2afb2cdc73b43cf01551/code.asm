	ldr x2, [x4,x7]
	ldr x8, [x3, #0]
	cmp x4, x8
	b.eq #0xC
	ldr x28, [x2, #56]
	b #0x8
	ldr x6, [x22, #8]
