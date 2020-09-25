	ldr x27, [x25,x3]
	ldr x7, [x9, #0]
	cmp x25, x7
	b.eq #0xC
	ldr x19, [x27, #1]
	b #0x8
	ldr x10, [x27, #8]
