	ldr x9, [x12,x24]
	ldr x7, [x16, #0]
	cmp x12, x7
	b.eq #0xC
	ldr x16, [x9, #117]
	b #0x8
	ldr x25, [x10, #16]
