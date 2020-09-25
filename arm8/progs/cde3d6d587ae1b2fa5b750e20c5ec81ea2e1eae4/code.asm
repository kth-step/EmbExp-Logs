	ldr x27, [x25,x4]
	ldr x14, [x17, #0]
	cmp x25, x14
	b.eq #0xC
	ldr x1, [x27, #24]
	b #0x8
	ldr x4, [x2]
