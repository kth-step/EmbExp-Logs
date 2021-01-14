	ldr x28, [x17,x5]
	ldr x10, [x26, #52]
	cmp x17, x10
	b.eq #0xC
	ldr x4, [x28, #122]
	b #0x8
	ldr x5, [x24, #8]
