	ldr x4, [x14,x8]
	ldr x18, [x5, #0]
	cmp x14, x18
	b.eq #0xC
	ldr x15, [x4, #138]
	b #0x8
	ldr x20, [x0, #4]
