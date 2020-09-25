	ldr x3, [x28,x10]
	ldr x14, [x29, #0]
	cmp x28, x14
	b.eq #0xC
	ldr x2, [x3, #200]
	b #0x8
	ldr x14, [x29, #8]
