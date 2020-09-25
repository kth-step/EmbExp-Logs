	ldr x6, [x0,x24]
	ldr x13, [x20, #0]
	cmp x0, x13
	b.eq #0xC
	ldr x18, [x6, #27]
	b #0x8
	ldr x28, [x15, #4]
