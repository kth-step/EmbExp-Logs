	ldr x29, [x3,x25]
	ldr x7, [x10, #230]
	cmp x3, x7
	b.eq #0xC
	ldr x22, [x29, #63]
	b #0x8
	ldr x21, [x11, #16]
