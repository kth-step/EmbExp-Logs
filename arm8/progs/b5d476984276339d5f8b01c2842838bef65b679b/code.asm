	ldr x20, [x24,x15]
	ldr x11, [x16, #0]
	cmp x24, x11
	b.eq #0xC
	ldr x6, [x20, #39]
	b #0x8
	ldr x12, [x3, #16]
