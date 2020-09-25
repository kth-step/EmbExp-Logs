	ldr x18, [x22,x20]
	ldr x10, [x3, #0]
	cmp x22, x10
	b.eq #0xC
	ldr x29, [x18, #120]
	b #0x8
	ldr x5, [x4, #4]
