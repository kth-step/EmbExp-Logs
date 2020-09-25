	ldr x2, [x13,x23]
	ldr x25, [x26, #0]
	cmp x13, x25
	b.eq #0xC
	ldr x26, [x2, #45]
	b #0x8
	ldr x7, [x27, #4]
