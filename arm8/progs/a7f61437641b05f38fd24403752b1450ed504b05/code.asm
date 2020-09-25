	ldr x20, [x8,x19]
	ldr x15, [x21, #0]
	cmp x8, x15
	b.eq #0xC
	ldr x4, [x20, #102]
	b #0x8
	ldr x0, [x6, #4]
