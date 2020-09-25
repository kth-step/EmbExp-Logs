	ldr x14, [x24,x4]
	ldr x3, [x2, #0]
	cmp x24, x3
	b.eq #0xC
	ldr x7, [x14, #215]
	b #0x8
	ldr x14, [x4, #8]
