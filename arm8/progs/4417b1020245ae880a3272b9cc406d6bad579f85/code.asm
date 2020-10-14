	ldr x3, [x2,x0]
	ldr x26, [x9, #0]
	cmp x2, x26
	b.eq #0xC
	ldr x20, [x3, #1]
	b #0x8
	ldr x7, [x8, #16]
