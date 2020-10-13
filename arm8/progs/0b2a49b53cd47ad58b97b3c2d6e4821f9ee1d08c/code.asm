	ldr x2, [x3,x22]
	ldr x28, [x6, #0]
	cmp x3, x28
	b.eq #0xC
	ldr x17, [x2, #31]
	b #0x8
	ldr x4, [x29, #16]
