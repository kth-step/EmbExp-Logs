	ldr x6, [x20,x8]
	ldr x21, [x3, #0]
	cmp x20, x21
	b.eq #0xC
	ldr x3, [x6, #12]
	b #0x8
	ldr x5, [x25, #4]
