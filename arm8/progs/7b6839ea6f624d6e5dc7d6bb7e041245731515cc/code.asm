	ldr x4, [x28,x8]
	ldr x8, [x0, #0]
	cmp x28, x8
	b.eq #0xC
	ldr x6, [x4, #239]
	b #0x8
	ldr x16, [x25, #16]
