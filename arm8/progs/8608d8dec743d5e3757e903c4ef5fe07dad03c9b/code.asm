	ldr x23, [x27,x9]
	ldr x21, [x13, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x15, [x23, #241]
	b #0x8
	ldr x5, [x21, #4]
