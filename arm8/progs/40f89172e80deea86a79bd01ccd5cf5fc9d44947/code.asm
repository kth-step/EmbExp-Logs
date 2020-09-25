	ldr x6, [x29,x7]
	ldr x27, [x5, #0]
	cmp x29, x27
	b.eq #0xC
	ldr x16, [x6, #169]
	b #0x8
	ldr x19, [x1, #16]
