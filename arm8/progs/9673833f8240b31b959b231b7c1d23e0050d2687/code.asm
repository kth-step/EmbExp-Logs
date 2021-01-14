	ldr x29, [x27,x2]
	ldr x14, [x0, #187]
	cmp x27, x14
	b.eq #0xC
	ldr x3, [x29, #122]
	b #0x8
	ldr x28, [x2, #16]
