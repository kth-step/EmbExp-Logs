	ldr x2, [x8,x21]
	ldr x6, [x18, #0]
	cmp x8, x6
	b.eq #0xC
	ldr x12, [x2, #21]
	b #0x8
	ldr x17, [x0, #16]
