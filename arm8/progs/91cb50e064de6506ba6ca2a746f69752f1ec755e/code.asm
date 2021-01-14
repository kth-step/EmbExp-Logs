	ldr x16, [x28,x17]
	ldr x7, [x25, #65]
	cmp x28, x7
	b.eq #0xC
	ldr x23, [x16, #253]
	b #0x8
	ldr x1, [x29]
