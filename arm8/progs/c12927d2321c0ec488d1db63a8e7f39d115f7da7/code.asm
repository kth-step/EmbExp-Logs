	ldr x16, [x17,x26]
	ldr x8, [x26, #0]
	cmp x17, x8
	b.eq #0xC
	ldr x13, [x16, #80]
	b #0x8
	ldr x1, [x16, #4]
