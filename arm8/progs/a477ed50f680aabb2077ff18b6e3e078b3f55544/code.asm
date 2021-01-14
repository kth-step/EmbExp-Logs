	ldr x10, [x24,x4]
	ldr x18, [x15, #51]
	cmp x24, x18
	b.eq #0xC
	ldr x0, [x10, #21]
	b #0x8
	ldr x16, [x9]
