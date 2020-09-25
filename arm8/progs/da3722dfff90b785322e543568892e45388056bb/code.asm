	ldr x29, [x27,x14]
	ldr x17, [x21, #0]
	cmp x27, x17
	b.eq #0xC
	ldr x1, [x29, #149]
	b #0x8
	ldr x23, [x0, #4]
