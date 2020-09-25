	ldr x10, [x13,x25]
	ldr x0, [x25, #0]
	cmp x13, x0
	b.eq #0xC
	ldr x14, [x10, #83]
	b #0x8
	ldr x7, [x18, #16]
