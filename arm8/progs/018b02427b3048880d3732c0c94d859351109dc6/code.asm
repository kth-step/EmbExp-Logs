	ldr x14, [x17,x8]
	ldr x16, [x7, #0]
	cmp x17, x16
	b.eq #0xC
	ldr x20, [x14, #97]
	b #0x8
	ldr x2, [x0, #4]
