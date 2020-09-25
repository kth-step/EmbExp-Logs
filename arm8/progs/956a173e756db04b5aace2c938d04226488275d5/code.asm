	ldr x4, [x9,x1]
	ldr x25, [x6, #0]
	cmp x9, x25
	b.eq #0xC
	ldr x13, [x4, #20]
	b #0x8
	ldr x5, [x0, #16]
