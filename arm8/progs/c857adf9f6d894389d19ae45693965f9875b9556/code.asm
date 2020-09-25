	ldr x17, [x27,x23]
	ldr x21, [x26, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x1, [x17, #6]
	b #0x8
	ldr x7, [x9]
