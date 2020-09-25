	ldr x15, [x1,x7]
	ldr x18, [x6, #0]
	cmp x1, x18
	b.eq #0xC
	ldr x7, [x15, #83]
	b #0x8
	ldr x10, [x12, #8]
