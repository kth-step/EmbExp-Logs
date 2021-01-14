	ldr x29, [x20,x13]
	ldr x2, [x13, #120]
	cmp x20, x2
	b.eq #0xC
	ldr x11, [x29, #222]
	b #0x8
	ldr x16, [x26, #16]
