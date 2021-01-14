	ldr x4, [x11,x16]
	ldr x22, [x14, #4]
	cmp x11, x22
	b.eq #0xC
	ldr x1, [x4, #120]
	b #0x8
	ldr x8, [x14, #16]
