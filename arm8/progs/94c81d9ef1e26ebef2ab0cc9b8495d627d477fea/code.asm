	ldr x11, [x16,x6]
	ldr x8, [x26, #0]
	cmp x16, x8
	b.eq #0xC
	ldr x14, [x11, #44]
	b #0x8
	ldr x0, [x23, #16]
