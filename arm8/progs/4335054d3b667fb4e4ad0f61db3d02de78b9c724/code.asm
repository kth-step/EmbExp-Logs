	ldr x14, [x6,x29]
	ldr x21, [x2, #0]
	cmp x6, x21
	b.eq #0xC
	ldr x1, [x14, #3]
	b #0x8
	ldr x1, [x29, #16]
