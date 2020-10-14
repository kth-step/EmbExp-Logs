	ldr x21, [x17,x4]
	ldr x0, [x9, #0]
	cmp x17, x0
	b.eq #0xC
	ldr x16, [x21, #18]
	b #0x8
	ldr x23, [x26]
