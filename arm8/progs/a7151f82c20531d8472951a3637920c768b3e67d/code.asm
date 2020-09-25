	ldr x24, [x23,x22]
	ldr x7, [x23, #0]
	cmp x23, x7
	b.eq #0xC
	ldr x5, [x24, #7]
	b #0x8
	ldr x0, [x11]
