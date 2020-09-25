	ldr x8, [x1,x25]
	ldr x0, [x14, #0]
	cmp x1, x0
	b.eq #0xC
	ldr x20, [x8, #114]
	b #0x8
	ldr x10, [x1]
