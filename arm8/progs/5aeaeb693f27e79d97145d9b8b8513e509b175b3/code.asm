	ldr x3, [x24,x24]
	ldr x16, [x12, #0]
	cmp x24, x16
	b.eq #0xC
	ldr x14, [x3, #23]
	b #0x8
	ldr x11, [x25]
