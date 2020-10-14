	ldr x23, [x16,x17]
	ldr x0, [x25, #0]
	cmp x16, x0
	b.eq #0xC
	ldr x8, [x23, #47]
	b #0x8
	ldr x11, [x3]
