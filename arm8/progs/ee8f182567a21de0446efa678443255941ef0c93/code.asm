	ldr x3, [x25,x10]
	ldr x13, [x3, #0]
	cmp x25, x13
	b.eq #0xC
	ldr x20, [x3, #98]
	b #0x8
	ldr x4, [x10]
