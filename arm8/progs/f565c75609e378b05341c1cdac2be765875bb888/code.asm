	ldr x4, [x6,x15]
	ldr x28, [x6, #0]
	cmp x6, x28
	b.eq #0xC
	ldr x18, [x4, #121]
	b #0x8
	ldr x28, [x26, #8]
