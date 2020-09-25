	ldr x21, [x5,x28]
	ldr x7, [x3, #0]
	cmp x5, x7
	b.eq #0xC
	ldr x25, [x21, #170]
	b #0x8
	ldr x14, [x2, #8]
