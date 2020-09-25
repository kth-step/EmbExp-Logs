	ldr x17, [x6,x23]
	ldr x9, [x22, #0]
	cmp x6, x9
	b.eq #0xC
	ldr x6, [x17, #255]
	b #0x8
	ldr x28, [x28]
