	ldr x2, [x1,x7]
	ldr x25, [x26, #0]
	cmp x1, x25
	b.eq #0xC
	ldr x11, [x2, #171]
	b #0x8
	ldr x21, [x5, #8]
