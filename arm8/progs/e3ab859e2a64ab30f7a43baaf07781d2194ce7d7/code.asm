	ldr x7, [x13,x13]
	ldr x10, [x24, #0]
	cmp x13, x10
	b.eq #0xC
	ldr x19, [x7, #201]
	b #0x8
	ldr x24, [x0, #4]
