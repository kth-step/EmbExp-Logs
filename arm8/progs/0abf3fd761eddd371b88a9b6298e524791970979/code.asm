	ldr x20, [x25,x23]
	ldr x27, [x28, #0]
	cmp x25, x27
	b.eq #0xC
	ldr x13, [x20, #227]
	b #0x8
	ldr x12, [x16, #4]
