	ldr x25, [x4,x21]
	ldr x28, [x5, #0]
	cmp x4, x28
	b.eq #0xC
	ldr x20, [x25, #8]
	b #0x8
	ldr x23, [x13]
