	ldr x25, [x7,x19]
	ldr x10, [x24, #0]
	cmp x7, x10
	b.eq #0xC
	ldr x1, [x25, #116]
	b #0x8
	ldr x1, [x22]
