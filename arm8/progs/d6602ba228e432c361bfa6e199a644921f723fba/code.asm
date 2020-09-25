	ldr x21, [x29,x25]
	ldr x7, [x3, #0]
	cmp x29, x7
	b.eq #0xC
	ldr x0, [x21, #128]
	b #0x8
	ldr x11, [x25]
