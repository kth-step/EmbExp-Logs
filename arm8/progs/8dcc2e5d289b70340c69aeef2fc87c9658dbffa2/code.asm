	ldr x2, [x13,x23]
	ldr x17, [x16, #68]
	cmp x13, x17
	b.eq #0xC
	ldr x13, [x2, #67]
	b #0x8
	ldr x15, [x26]
