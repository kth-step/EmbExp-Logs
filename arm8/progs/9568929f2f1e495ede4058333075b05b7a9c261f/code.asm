	ldr x12, [x4,x17]
	ldr x3, [x5, #0]
	cmp x4, x3
	b.eq #0xC
	ldr x5, [x12, #111]
	b #0x8
	ldr x10, [x25, #8]
