	ldr x26, [x10,x19]
	ldr x1, [x13, #0]
	cmp x10, x1
	b.eq #0xC
	ldr x20, [x26, #67]
	b #0x8
	ldr x3, [x14, #8]
