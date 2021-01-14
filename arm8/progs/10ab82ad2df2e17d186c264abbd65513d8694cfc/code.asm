	ldr x13, [x29,x3]
	ldr x8, [x6, #156]
	cmp x29, x8
	b.eq #0xC
	ldr x26, [x13, #40]
	b #0x8
	ldr x18, [x21, #8]
