	ldr x7, [x18,x3]
	ldr x23, [x5, #0]
	cmp x18, x23
	b.eq #0xC
	ldr x18, [x7, #43]
	b #0x8
	ldr x19, [x27, #8]
