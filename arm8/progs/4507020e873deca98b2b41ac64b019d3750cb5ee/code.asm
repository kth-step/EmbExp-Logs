	ldr x6, [x18,x16]
	ldr x25, [x11, #0]
	cmp x18, x25
	b.eq #0xC
	ldr x10, [x6, #1]
	b #0x8
	ldr x1, [x5]
