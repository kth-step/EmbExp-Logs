	ldr x6, [x12,x25]
	ldr x22, [x9, #0]
	cmp x12, x22
	b.eq #0xC
	ldr x16, [x6, #208]
	b #0x8
	ldr x26, [x14, #8]
