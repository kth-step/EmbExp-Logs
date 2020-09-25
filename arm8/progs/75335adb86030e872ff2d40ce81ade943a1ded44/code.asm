	ldr x2, [x23,x9]
	ldr x16, [x29, #0]
	cmp x23, x16
	b.eq #0xC
	ldr x11, [x2, #68]
	b #0x8
	ldr x9, [x2]
