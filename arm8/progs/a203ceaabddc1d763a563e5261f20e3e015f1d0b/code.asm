	ldr x22, [x4,x29]
	ldr x15, [x7, #190]
	cmp x4, x15
	b.eq #0xC
	ldr x27, [x22, #15]
	b #0x8
	ldr x0, [x10, #16]
