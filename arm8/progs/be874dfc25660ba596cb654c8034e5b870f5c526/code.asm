	ldr x10, [x2,x4]
	ldr x5, [x17, #0]
	cmp x2, x5
	b.eq #0xC
	ldr x18, [x10, #135]
	b #0x8
	ldr x14, [x15, #4]
