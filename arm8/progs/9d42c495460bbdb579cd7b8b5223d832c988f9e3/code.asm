	ldr x26, [x9,x1]
	ldr x27, [x17, #0]
	cmp x9, x27
	b.eq #0xC
	ldr x23, [x26, #9]
	b #0x8
	ldr x9, [x13, #16]
