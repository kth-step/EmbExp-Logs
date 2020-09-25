	ldr x13, [x14,x2]
	ldr x20, [x13, #0]
	cmp x14, x20
	b.eq #0xC
	ldr x25, [x13, #33]
	b #0x8
	ldr x10, [x3, #4]
