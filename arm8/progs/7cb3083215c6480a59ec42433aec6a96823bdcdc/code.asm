	ldr x11, [x24,x12]
	ldr x2, [x11, #222]
	cmp x24, x2
	b.eq #0xC
	ldr x28, [x11, #184]
	b #0x8
	ldr x16, [x21, #8]
