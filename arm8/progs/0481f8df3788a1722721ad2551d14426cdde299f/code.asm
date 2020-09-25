	ldr x5, [x9,x3]
	ldr x27, [x14, #0]
	cmp x9, x27
	b.eq #0xC
	ldr x9, [x5, #67]
	b #0x8
	ldr x20, [x0, #16]
