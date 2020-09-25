	ldr x14, [x20,x1]
	ldr x19, [x6, #0]
	cmp x20, x19
	b.eq #0xC
	ldr x5, [x14, #239]
	b #0x8
	ldr x5, [x24, #16]
