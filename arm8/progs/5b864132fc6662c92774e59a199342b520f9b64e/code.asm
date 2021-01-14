	ldr x3, [x12,x20]
	ldr x10, [x8, #135]
	cmp x12, x10
	b.eq #0xC
	ldr x0, [x3, #121]
	b #0x8
	ldr x15, [x15]
