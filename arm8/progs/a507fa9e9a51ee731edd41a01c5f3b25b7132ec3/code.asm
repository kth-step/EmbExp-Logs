	ldr x5, [x19,x11]
	ldr x29, [x23, #43]
	cmp x19, x29
	b.eq #0xC
	ldr x3, [x5, #46]
	b #0x8
	ldr x17, [x25, #16]
