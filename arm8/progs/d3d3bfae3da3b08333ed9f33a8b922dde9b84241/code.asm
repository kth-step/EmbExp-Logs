	ldr x3, [x19,x22]
	ldr x13, [x7, #0]
	cmp x19, x13
	b.eq #0xC
	ldr x2, [x3, #45]
	b #0x8
	ldr x21, [x9]
