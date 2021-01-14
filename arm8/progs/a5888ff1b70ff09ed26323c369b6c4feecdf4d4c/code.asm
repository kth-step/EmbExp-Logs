	ldr x21, [x19,x3]
	ldr x10, [x26, #206]
	cmp x19, x10
	b.eq #0xC
	ldr x2, [x21, #49]
	b #0x8
	ldr x11, [x28, #8]
