	ldr x27, [x15,x2]
	ldr x29, [x4, #0]
	cmp x15, x29
	b.eq #0xC
	ldr x11, [x27, #14]
	b #0x8
	ldr x14, [x0, #16]
