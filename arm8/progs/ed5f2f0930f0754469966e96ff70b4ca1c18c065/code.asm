	ldr x27, [x22,x11]
	ldr x4, [x23, #122]
	cmp x22, x4
	b.eq #0xC
	ldr x26, [x27, #17]
	b #0x8
	ldr x22, [x20, #4]
