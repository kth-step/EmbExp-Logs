	ldr x25, [x14,x23]
	ldr x29, [x3, #0]
	cmp x14, x29
	b.eq #0xC
	ldr x15, [x25, #162]
	b #0x8
	ldr x9, [x12, #4]
