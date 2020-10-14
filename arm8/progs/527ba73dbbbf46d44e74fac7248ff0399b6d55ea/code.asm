	ldr x5, [x18,x13]
	ldr x12, [x2, #0]
	cmp x18, x12
	b.eq #0xC
	ldr x23, [x5, #11]
	b #0x8
	ldr x3, [x11, #8]
