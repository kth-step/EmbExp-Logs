	ldr x23, [x15,x7]
	ldr x13, [x4, #0]
	cmp x15, x13
	b.eq #0xC
	ldr x26, [x23, #47]
	b #0x8
	ldr x12, [x27, #16]
