	ldr x5, [x28,x10]
	ldr x13, [x7, #0]
	cmp x28, x13
	b.eq #0xC
	ldr x21, [x5, #176]
	b #0x8
	ldr x14, [x20, #16]
