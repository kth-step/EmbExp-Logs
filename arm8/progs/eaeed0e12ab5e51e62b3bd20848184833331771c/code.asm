	ldr x8, [x14,x5]
	ldr x2, [x25, #13]
	cmp x14, x2
	b.eq #0xC
	ldr x17, [x8, #234]
	b #0x8
	ldr x9, [x16, #16]
