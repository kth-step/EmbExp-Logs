	ldr x6, [x1,x0]
	ldr x11, [x7, #0]
	cmp x1, x11
	b.eq #0xC
	ldr x8, [x6, #104]
	b #0x8
	ldr x9, [x5]
