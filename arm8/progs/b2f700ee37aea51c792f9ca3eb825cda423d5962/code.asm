	ldr x11, [x14,x22]
	ldr x14, [x9, #0]
	cmp x14, x14
	b.eq #0xC
	ldr x2, [x11, #25]
	b #0x8
	ldr x25, [x6, #16]
