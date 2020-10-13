	ldr x13, [x0,x14]
	ldr x17, [x1, #0]
	cmp x0, x17
	b.eq #0xC
	ldr x21, [x13, #102]
	b #0x8
	ldr x27, [x20, #16]
