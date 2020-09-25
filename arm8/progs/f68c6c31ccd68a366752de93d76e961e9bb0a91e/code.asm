	ldr x15, [x2,x0]
	ldr x23, [x25, #0]
	cmp x2, x23
	b.eq #0xC
	ldr x17, [x15, #252]
	b #0x8
	ldr x8, [x24, #4]
