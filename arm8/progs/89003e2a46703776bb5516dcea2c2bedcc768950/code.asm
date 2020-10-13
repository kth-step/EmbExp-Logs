	ldr x6, [x26,x10]
	ldr x1, [x7, #0]
	cmp x26, x1
	b.eq #0xC
	ldr x0, [x6, #68]
	b #0x8
	ldr x17, [x1, #16]
