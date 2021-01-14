	ldr x14, [x21,x1]
	ldr x13, [x16, #16]
	cmp x21, x13
	b.eq #0xC
	ldr x5, [x14, #189]
	b #0x8
	ldr x0, [x20, #4]
