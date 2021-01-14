	ldr x10, [x24,x9]
	ldr x27, [x24, #142]
	cmp x24, x27
	b.eq #0xC
	ldr x1, [x10, #101]
	b #0x8
	ldr x29, [x11, #8]
