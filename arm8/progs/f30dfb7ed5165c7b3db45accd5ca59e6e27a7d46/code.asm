	ldr x7, [x21,x2]
	ldr x29, [x12, #0]
	cmp x21, x29
	b.eq #0xC
	ldr x8, [x7, #19]
	b #0x8
	ldr x5, [x17, #16]
