	ldr x14, [x15,x11]
	ldr x19, [x7, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x13, [x14, #31]
	b #0x8
	ldr x23, [x9]
