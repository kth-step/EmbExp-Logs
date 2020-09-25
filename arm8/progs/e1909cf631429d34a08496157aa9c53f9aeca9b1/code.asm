	ldr x29, [x2,x15]
	ldr x23, [x9, #0]
	cmp x2, x23
	b.eq #0xC
	ldr x17, [x29, #23]
	b #0x8
	ldr x26, [x5, #16]
