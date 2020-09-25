	ldr x29, [x10,x1]
	ldr x5, [x15, #0]
	cmp x10, x5
	b.eq #0xC
	ldr x8, [x29, #54]
	b #0x8
	ldr x29, [x22, #8]
