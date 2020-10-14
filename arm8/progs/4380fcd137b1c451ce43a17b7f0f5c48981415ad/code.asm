	ldr x26, [x17,x1]
	ldr x16, [x13, #0]
	cmp x17, x16
	b.eq #0xC
	ldr x18, [x26, #140]
	b #0x8
	ldr x14, [x5, #8]
