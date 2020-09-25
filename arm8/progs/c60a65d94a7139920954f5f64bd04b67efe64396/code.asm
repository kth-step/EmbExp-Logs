	ldr x18, [x29,x11]
	ldr x12, [x10, #0]
	cmp x29, x12
	b.eq #0xC
	ldr x1, [x18, #122]
	b #0x8
	ldr x3, [x6, #8]
