	ldr x22, [x5,x20]
	ldr x24, [x7, #0]
	cmp x5, x24
	b.eq #0xC
	ldr x12, [x22, #136]
	b #0x8
	ldr x14, [x9, #8]
