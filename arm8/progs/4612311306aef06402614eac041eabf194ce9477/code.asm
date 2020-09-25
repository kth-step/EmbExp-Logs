	ldr x18, [x11,x7]
	ldr x7, [x4, #0]
	cmp x11, x7
	b.eq #0xC
	ldr x12, [x18, #52]
	b #0x8
	ldr x12, [x20]
