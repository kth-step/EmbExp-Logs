	ldr x4, [x0,x27]
	ldr x14, [x5, #0]
	cmp x0, x14
	b.eq #0xC
	ldr x7, [x4, #150]
	b #0x8
	ldr x17, [x27, #16]
