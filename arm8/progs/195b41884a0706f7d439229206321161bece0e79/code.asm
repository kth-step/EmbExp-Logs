	ldr x21, [x2,x3]
	ldr x28, [x25, #206]
	cmp x2, x28
	b.eq #0xC
	ldr x25, [x21, #220]
	b #0x8
	ldr x13, [x17, #8]
