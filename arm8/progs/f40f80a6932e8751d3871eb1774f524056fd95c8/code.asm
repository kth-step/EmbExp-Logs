	ldr x5, [x1,x14]
	ldr x12, [x7, #0]
	cmp x1, x12
	b.eq #0xC
	ldr x3, [x5, #135]
	b #0x8
	ldr x28, [x26, #8]
