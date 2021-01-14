	ldr x4, [x3,x8]
	ldr x6, [x20, #174]
	cmp x3, x6
	b.eq #0xC
	ldr x18, [x4, #52]
	b #0x8
	ldr x21, [x8]
