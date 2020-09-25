	ldr x12, [x9,x0]
	ldr x23, [x11, #0]
	cmp x9, x23
	b.eq #0xC
	ldr x6, [x12, #210]
	b #0x8
	ldr x27, [x19, #8]
