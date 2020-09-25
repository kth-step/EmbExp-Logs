	ldr x23, [x7,x15]
	ldr x1, [x17, #0]
	cmp x7, x1
	b.eq #0xC
	ldr x16, [x23, #82]
	b #0x8
	ldr x29, [x10, #4]
