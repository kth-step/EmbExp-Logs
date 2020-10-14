	ldr x10, [x9,x23]
	ldr x5, [x22, #0]
	cmp x9, x5
	b.eq #0xC
	ldr x3, [x10, #59]
	b #0x8
	ldr x16, [x10, #16]
