	ldr x8, [x18,x21]
	ldr x5, [x12, #27]
	cmp x18, x5
	b.eq #0xC
	ldr x11, [x8, #30]
	b #0x8
	ldr x24, [x22, #8]
