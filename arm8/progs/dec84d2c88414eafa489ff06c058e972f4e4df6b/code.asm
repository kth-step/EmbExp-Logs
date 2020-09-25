	ldr x20, [x15,x6]
	ldr x21, [x10, #0]
	cmp x15, x21
	b.eq #0xC
	ldr x5, [x20, #60]
	b #0x8
	ldr x26, [x0]
