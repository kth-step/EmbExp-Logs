	ldr x13, [x14,x12]
	ldr x5, [x1, #0]
	cmp x14, x5
	b.eq #0xC
	ldr x3, [x13, #158]
	b #0x8
	ldr x16, [x21]
