	ldr x15, [x23,x29]
	ldr x11, [x25, #0]
	cmp x23, x11
	b.eq #0xC
	ldr x26, [x15, #148]
	b #0x8
	ldr x25, [x1, #16]
