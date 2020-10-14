	ldr x6, [x8,x8]
	ldr x17, [x3, #0]
	cmp x8, x17
	b.eq #0xC
	ldr x28, [x6, #70]
	b #0x8
	ldr x14, [x6, #8]
