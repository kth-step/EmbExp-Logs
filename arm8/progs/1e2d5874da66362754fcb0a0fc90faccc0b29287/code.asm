	ldr x8, [x17,x19]
	ldr x12, [x0, #0]
	cmp x17, x12
	b.eq #0xC
	ldr x15, [x8, #198]
	b #0x8
	ldr x25, [x20]
