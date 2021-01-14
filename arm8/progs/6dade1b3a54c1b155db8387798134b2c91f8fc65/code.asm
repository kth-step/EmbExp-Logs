	ldr x11, [x22,x27]
	ldr x0, [x14, #58]
	cmp x22, x0
	b.eq #0xC
	ldr x29, [x11, #106]
	b #0x8
	ldr x1, [x2, #16]
