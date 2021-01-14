	ldr x27, [x12,x9]
	ldr x5, [x2, #124]
	cmp x12, x5
	b.eq #0xC
	ldr x16, [x27, #135]
	b #0x8
	ldr x24, [x0, #8]
