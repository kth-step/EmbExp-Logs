	ldr x9, [x2,x8]
	ldr x29, [x6, #67]
	cmp x2, x29
	b.eq #0xC
	ldr x23, [x9, #177]
	b #0x8
	ldr x15, [x21, #4]
