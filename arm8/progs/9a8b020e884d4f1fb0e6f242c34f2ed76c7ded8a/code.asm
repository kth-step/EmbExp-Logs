	ldr x17, [x13,x2]
	ldr x25, [x22, #0]
	cmp x13, x25
	b.eq #0xC
	ldr x26, [x17, #223]
	b #0x8
	ldr x10, [x11, #16]
