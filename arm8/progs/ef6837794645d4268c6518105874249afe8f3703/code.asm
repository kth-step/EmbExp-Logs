	ldr x15, [x25,x20]
	ldr x9, [x23, #0]
	cmp x25, x9
	b.eq #0xC
	ldr x8, [x15, #162]
	b #0x8
	ldr x29, [x2, #8]
