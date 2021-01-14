	ldr x4, [x24,x13]
	ldr x2, [x14, #194]
	cmp x24, x2
	b.eq #0xC
	ldr x27, [x4, #76]
	b #0x8
	ldr x18, [x16]
