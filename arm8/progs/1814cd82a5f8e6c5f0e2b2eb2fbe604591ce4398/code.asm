	ldr x29, [x3,x3]
	ldr x5, [x20, #0]
	cmp x3, x5
	b.eq #0xC
	ldr x16, [x29, #175]
	b #0x8
	ldr x11, [x6, #16]
