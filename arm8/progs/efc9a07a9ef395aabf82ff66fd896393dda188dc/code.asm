	ldr x17, [x23,x25]
	ldr x29, [x0, #0]
	cmp x23, x29
	b.eq #0xC
	ldr x4, [x17, #5]
	b #0x8
	ldr x9, [x9, #16]
