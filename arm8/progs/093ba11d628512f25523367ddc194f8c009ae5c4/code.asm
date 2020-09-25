	ldr x23, [x5,x19]
	ldr x14, [x11, #0]
	cmp x5, x14
	b.eq #0xC
	ldr x28, [x23, #21]
	b #0x8
	ldr x18, [x9]
