	ldr x14, [x0,x10]
	ldr x10, [x27, #252]
	cmp x0, x10
	b.eq #0xC
	ldr x1, [x14, #75]
	b #0x8
	ldr x7, [x10, #8]
