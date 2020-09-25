	ldr x16, [x11,x0]
	ldr x18, [x4, #0]
	cmp x11, x18
	b.eq #0xC
	ldr x27, [x16, #182]
	b #0x8
	ldr x3, [x25, #8]
