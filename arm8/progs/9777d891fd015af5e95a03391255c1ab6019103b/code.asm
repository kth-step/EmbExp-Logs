	ldr x6, [x4,x0]
	ldr x24, [x21, #208]
	cmp x4, x24
	b.eq #0xC
	ldr x26, [x6, #12]
	b #0x8
	ldr x0, [x6]
