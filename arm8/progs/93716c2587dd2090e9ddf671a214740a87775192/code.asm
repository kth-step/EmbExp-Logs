	ldr x14, [x3,x6]
	ldr x20, [x24, #156]
	cmp x3, x20
	b.eq #0xC
	ldr x0, [x14, #85]
	b #0x8
	ldr x21, [x13, #4]
