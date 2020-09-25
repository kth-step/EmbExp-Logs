	ldr x26, [x25,x8]
	ldr x28, [x12, #0]
	cmp x25, x28
	b.eq #0xC
	ldr x20, [x26, #155]
	b #0x8
	ldr x9, [x14, #4]
