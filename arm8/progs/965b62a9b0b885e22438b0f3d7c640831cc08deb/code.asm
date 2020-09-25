	ldr x15, [x16,x16]
	ldr x27, [x14, #0]
	cmp x16, x27
	b.eq #0xC
	ldr x17, [x15, #45]
	b #0x8
	ldr x11, [x21, #4]
