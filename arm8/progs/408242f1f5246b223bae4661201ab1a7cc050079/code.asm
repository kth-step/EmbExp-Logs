	ldr x29, [x24,x10]
	ldr x20, [x1, #0]
	cmp x24, x20
	b.eq #0xC
	ldr x4, [x29, #36]
	b #0x8
	ldr x16, [x23]
