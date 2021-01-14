	ldr x22, [x8,x11]
	ldr x15, [x29, #228]
	cmp x8, x15
	b.eq #0xC
	ldr x2, [x22, #34]
	b #0x8
	ldr x19, [x16, #16]
