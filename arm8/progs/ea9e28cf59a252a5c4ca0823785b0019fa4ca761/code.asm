	ldr x13, [x0,x22]
	ldr x20, [x0, #0]
	cmp x0, x20
	b.eq #0xC
	ldr x17, [x13, #9]
	b #0x8
	ldr x14, [x25, #8]
