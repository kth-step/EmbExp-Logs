	ldr x21, [x16,x9]
	ldr x25, [x3, #255]
	cmp x16, x25
	b.eq #0xC
	ldr x23, [x21, #179]
	b #0x8
	ldr x21, [x19]
