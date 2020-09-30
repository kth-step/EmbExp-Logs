	ldr x24, [x28,x26]
	ldr x26, [x25, #0]
	cmp x28, x26
	b.eq #0xC
	ldr x1, [x24, #25]
	b #0x8
	ldr x17, [x3, #8]
