	ldr x28, [x16,x5]
	ldr x26, [x1, #168]
	cmp x16, x26
	b.eq #0xC
	ldr x21, [x28, #120]
	b #0x8
	ldr x23, [x11, #8]
