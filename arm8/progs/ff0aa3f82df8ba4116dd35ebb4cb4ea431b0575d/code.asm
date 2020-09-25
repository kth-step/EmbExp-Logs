	ldr x23, [x4,x0]
	ldr x2, [x10, #0]
	cmp x4, x2
	b.eq #0xC
	ldr x15, [x23, #192]
	b #0x8
	ldr x7, [x18, #4]
