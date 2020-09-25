	ldr x10, [x27,x19]
	ldr x1, [x4, #0]
	cmp x27, x1
	b.eq #0xC
	ldr x7, [x10, #31]
	b #0x8
	ldr x6, [x10]
