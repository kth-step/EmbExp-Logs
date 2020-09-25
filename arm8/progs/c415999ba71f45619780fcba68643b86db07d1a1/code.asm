	ldr x24, [x7,x19]
	ldr x4, [x23, #0]
	cmp x7, x4
	b.eq #0xC
	ldr x5, [x24, #102]
	b #0x8
	ldr x20, [x21]
