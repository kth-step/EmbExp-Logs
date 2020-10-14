	ldr x22, [x4,x3]
	ldr x24, [x5, #0]
	cmp x4, x24
	b.eq #0xC
	ldr x25, [x22, #169]
	b #0x8
	ldr x6, [x17, #16]
