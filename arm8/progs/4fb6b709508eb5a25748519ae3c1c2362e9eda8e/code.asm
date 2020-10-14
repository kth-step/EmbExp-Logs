	ldr x20, [x6,x18]
	ldr x25, [x20, #0]
	cmp x6, x25
	b.eq #0xC
	ldr x5, [x20, #116]
	b #0x8
	ldr x16, [x23, #16]
