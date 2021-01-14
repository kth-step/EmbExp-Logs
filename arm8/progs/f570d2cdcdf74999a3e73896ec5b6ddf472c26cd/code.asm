	ldr x10, [x14,x27]
	ldr x6, [x20, #85]
	cmp x14, x6
	b.eq #0xC
	ldr x7, [x10, #190]
	b #0x8
	ldr x19, [x15, #16]
