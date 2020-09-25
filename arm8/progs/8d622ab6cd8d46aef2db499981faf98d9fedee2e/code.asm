	ldr x29, [x28,x27]
	ldr x2, [x21, #0]
	cmp x28, x2
	b.eq #0xC
	ldr x11, [x29, #14]
	b #0x8
	ldr x15, [x14, #8]
