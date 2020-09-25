	ldr x12, [x1,x14]
	ldr x21, [x3, #0]
	cmp x1, x21
	b.eq #0xC
	ldr x15, [x12, #135]
	b #0x8
	ldr x13, [x11, #4]
