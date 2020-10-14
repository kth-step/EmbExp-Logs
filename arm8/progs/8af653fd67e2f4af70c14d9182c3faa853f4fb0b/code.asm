	ldr x14, [x5,x21]
	ldr x21, [x23, #0]
	cmp x5, x21
	b.eq #0xC
	ldr x28, [x14, #48]
	b #0x8
	ldr x25, [x4, #16]
