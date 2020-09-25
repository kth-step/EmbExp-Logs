	ldr x4, [x16,x17]
	ldr x14, [x19, #0]
	cmp x16, x14
	b.eq #0xC
	ldr x9, [x4, #239]
	b #0x8
	ldr x0, [x25]
