	ldr x28, [x26,x17]
	ldr x5, [x14, #41]
	cmp x26, x5
	b.eq #0xC
	ldr x21, [x28, #67]
	b #0x8
	ldr x0, [x5]
