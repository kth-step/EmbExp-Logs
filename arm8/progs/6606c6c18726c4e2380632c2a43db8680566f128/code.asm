	ldr x15, [x8,x4]
	ldr x14, [x24, #0]
	cmp x8, x14
	b.eq #0xC
	ldr x14, [x15, #51]
	b #0x8
	ldr x1, [x3]
