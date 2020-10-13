	ldr x16, [x29,x13]
	ldr x6, [x12, #0]
	cmp x29, x6
	b.eq #0xC
	ldr x24, [x16, #157]
	b #0x8
	ldr x11, [x24, #8]
