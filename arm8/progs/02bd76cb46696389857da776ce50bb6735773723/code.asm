	ldr x29, [x14,x21]
	ldr x0, [x24, #0]
	cmp x14, x0
	b.eq #0xC
	ldr x11, [x29, #223]
	b #0x8
	ldr x2, [x0]
