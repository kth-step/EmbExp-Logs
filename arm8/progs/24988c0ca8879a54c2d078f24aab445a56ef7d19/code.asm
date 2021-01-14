	ldr x8, [x16,x21]
	ldr x6, [x8, #104]
	cmp x16, x6
	b.eq #0xC
	ldr x13, [x8, #121]
	b #0x8
	ldr x13, [x0]
