	ldr x9, [x10,x4]
	ldr x18, [x28, #0]
	cmp x10, x18
	b.eq #0xC
	ldr x26, [x9, #255]
	b #0x8
	ldr x5, [x26, #8]
