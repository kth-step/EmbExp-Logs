	ldr x5, [x2,x2]
	ldr x21, [x5, #0]
	cmp x2, x21
	b.eq #0xC
	ldr x21, [x5, #16]
	b #0x8
	ldr x3, [x13]
