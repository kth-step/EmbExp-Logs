	ldr x25, [x3,x20]
	ldr x8, [x10, #28]
	cmp x3, x8
	b.eq #0xC
	ldr x2, [x25, #25]
	b #0x8
	ldr x15, [x3, #16]
