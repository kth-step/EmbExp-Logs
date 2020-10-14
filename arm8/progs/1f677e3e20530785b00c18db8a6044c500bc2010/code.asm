	ldr x7, [x4,x1]
	ldr x25, [x0, #0]
	cmp x4, x25
	b.eq #0xC
	ldr x9, [x7, #243]
	b #0x8
	ldr x21, [x9, #8]
