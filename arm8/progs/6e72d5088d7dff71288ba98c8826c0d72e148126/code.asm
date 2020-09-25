	ldr x20, [x25,x5]
	ldr x29, [x26, #0]
	cmp x25, x29
	b.eq #0xC
	ldr x0, [x20, #194]
	b #0x8
	ldr x0, [x4, #16]
