	ldr x5, [x25,x7]
	ldr x0, [x22, #62]
	cmp x25, x0
	b.eq #0xC
	ldr x17, [x5, #24]
	b #0x8
	ldr x22, [x4, #16]
