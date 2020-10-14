	ldr x14, [x22,x5]
	ldr x17, [x18, #0]
	cmp x22, x17
	b.eq #0xC
	ldr x11, [x14, #75]
	b #0x8
	ldr x21, [x25]
