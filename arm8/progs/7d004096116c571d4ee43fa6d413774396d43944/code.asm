	ldr x2, [x19,x25]
	ldr x11, [x17, #0]
	cmp x19, x11
	b.eq #0xC
	ldr x28, [x2, #208]
	b #0x8
	ldr x2, [x22, #16]
