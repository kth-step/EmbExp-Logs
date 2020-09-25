	ldr x2, [x12,x16]
	ldr x20, [x24, #0]
	cmp x12, x20
	b.eq #0xC
	ldr x13, [x2, #54]
	b #0x8
	ldr x4, [x23]
