	ldr x10, [x16,x21]
	ldr x11, [x27, #0]
	cmp x16, x11
	b.eq #0xC
	ldr x15, [x10, #73]
	b #0x8
	ldr x8, [x10]
