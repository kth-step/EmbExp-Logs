	ldr x11, [x4,x4]
	ldr x22, [x29, #147]
	cmp x4, x22
	b.eq #0xC
	ldr x17, [x11, #10]
	b #0x8
	ldr x7, [x23, #4]
