	ldr x21, [x6,x1]
	ldr x0, [x10, #0]
	cmp x6, x0
	b.eq #0xC
	ldr x29, [x21, #115]
	b #0x8
	ldr x14, [x29]
