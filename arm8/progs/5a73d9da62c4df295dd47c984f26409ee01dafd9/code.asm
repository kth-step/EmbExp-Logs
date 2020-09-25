	ldr x2, [x13,x20]
	ldr x8, [x0, #0]
	cmp x13, x8
	b.eq #0xC
	ldr x14, [x2, #192]
	b #0x8
	ldr x26, [x4, #16]
