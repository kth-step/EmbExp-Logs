	ldr x20, [x5,x17]
	ldr x2, [x24, #60]
	cmp x5, x2
	b.eq #0xC
	ldr x14, [x20, #6]
	b #0x8
	ldr x13, [x15, #4]
