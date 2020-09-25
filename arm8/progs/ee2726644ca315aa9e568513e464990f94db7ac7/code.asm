	ldr x4, [x22,x23]
	ldr x5, [x6, #0]
	cmp x22, x5
	b.eq #0xC
	ldr x10, [x4, #248]
	b #0x8
	ldr x15, [x17, #16]
