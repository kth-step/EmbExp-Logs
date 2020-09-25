	ldr x2, [x25,x4]
	ldr x28, [x9, #0]
	cmp x25, x28
	b.eq #0xC
	ldr x20, [x2, #122]
	b #0x8
	ldr x14, [x5, #8]
