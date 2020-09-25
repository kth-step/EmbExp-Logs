	ldr x5, [x0,x22]
	ldr x7, [x8, #0]
	cmp x0, x7
	b.eq #0xC
	ldr x22, [x5, #61]
	b #0x8
	ldr x17, [x29, #4]
