	ldr x20, [x29,x2]
	ldr x14, [x15, #0]
	cmp x29, x14
	b.eq #0xC
	ldr x0, [x20, #160]
	b #0x8
	ldr x2, [x21, #8]
