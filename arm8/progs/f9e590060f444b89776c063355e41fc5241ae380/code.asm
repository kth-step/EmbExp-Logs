	ldr x7, [x16,x16]
	ldr x25, [x5, #0]
	cmp x16, x25
	b.eq #0xC
	ldr x19, [x7, #141]
	b #0x8
	ldr x15, [x11, #16]
