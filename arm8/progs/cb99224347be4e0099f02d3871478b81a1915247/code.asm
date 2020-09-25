	ldr x25, [x16,x4]
	ldr x23, [x0, #0]
	cmp x16, x23
	b.eq #0xC
	ldr x15, [x25, #185]
	b #0x8
	ldr x7, [x5]
