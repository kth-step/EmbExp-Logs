	ldr x23, [x3,x15]
	ldr x29, [x11, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x9, [x23, #241]
	b #0x8
	ldr x6, [x29]
