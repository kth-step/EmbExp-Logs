	ldr x4, [x28,x28]
	ldr x29, [x17, #0]
	cmp x28, x29
	b.eq #0xC
	ldr x13, [x4, #215]
	b #0x8
	ldr x3, [x13, #8]
