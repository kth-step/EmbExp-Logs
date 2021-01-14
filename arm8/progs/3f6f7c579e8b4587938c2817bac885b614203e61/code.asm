	ldr x19, [x25,x9]
	ldr x12, [x8, #190]
	cmp x25, x12
	b.eq #0xC
	ldr x9, [x19, #52]
	b #0x8
	ldr x5, [x17, #4]
