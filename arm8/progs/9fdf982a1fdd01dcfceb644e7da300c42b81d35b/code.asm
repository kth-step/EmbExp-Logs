	ldr x23, [x8,x29]
	ldr x7, [x1, #0]
	cmp x8, x7
	b.eq #0xC
	ldr x0, [x23, #21]
	b #0x8
	ldr x2, [x19, #8]
