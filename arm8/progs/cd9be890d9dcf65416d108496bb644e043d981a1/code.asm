	ldr x13, [x12,x0]
	ldr x25, [x6, #0]
	cmp x12, x25
	b.eq #0xC
	ldr x6, [x13, #124]
	b #0x8
	ldr x24, [x5, #8]
