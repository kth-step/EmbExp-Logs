	ldr x2, [x8,x11]
	ldr x19, [x29, #117]
	cmp x8, x19
	b.eq #0xC
	ldr x6, [x2, #136]
	b #0x8
	ldr x3, [x6, #16]
