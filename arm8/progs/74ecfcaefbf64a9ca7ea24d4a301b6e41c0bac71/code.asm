	ldr x25, [x10,x5]
	ldr x7, [x18, #0]
	cmp x10, x7
	b.eq #0xC
	ldr x14, [x25, #70]
	b #0x8
	ldr x10, [x25]
