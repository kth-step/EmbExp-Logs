	ldr x12, [x23,x13]
	ldr x28, [x29, #0]
	cmp x23, x28
	b.eq #0xC
	ldr x1, [x12, #23]
	b #0x8
	ldr x2, [x27, #8]
