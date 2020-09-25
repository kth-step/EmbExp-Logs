	ldr x27, [x8,x13]
	ldr x13, [x20, #0]
	cmp x8, x13
	b.eq #0xC
	ldr x9, [x27, #50]
	b #0x8
	ldr x17, [x14, #16]
