	ldr x19, [x0,x3]
	ldr x15, [x7, #0]
	cmp x0, x15
	b.eq #0xC
	ldr x3, [x19, #137]
	b #0x8
	ldr x16, [x19, #4]
