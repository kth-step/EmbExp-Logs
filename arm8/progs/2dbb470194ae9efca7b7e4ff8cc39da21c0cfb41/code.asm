	ldr x6, [x21,x15]
	ldr x5, [x26, #31]
	cmp x21, x5
	b.eq #0xC
	ldr x14, [x6, #160]
	b #0x8
	ldr x8, [x9, #16]
