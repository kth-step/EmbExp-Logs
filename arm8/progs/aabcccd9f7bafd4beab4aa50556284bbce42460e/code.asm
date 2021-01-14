	ldr x29, [x28,x16]
	ldr x21, [x24, #110]
	cmp x28, x21
	b.eq #0xC
	ldr x1, [x29, #160]
	b #0x8
	ldr x15, [x24, #8]
