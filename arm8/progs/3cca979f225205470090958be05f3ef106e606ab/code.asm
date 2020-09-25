	ldr x25, [x22,x23]
	ldr x7, [x3, #0]
	cmp x22, x7
	b.eq #0xC
	ldr x3, [x25, #69]
	b #0x8
	ldr x22, [x15]
