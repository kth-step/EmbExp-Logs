	ldr x11, [x16,x12]
	ldr x0, [x15, #0]
	cmp x16, x0
	b.eq #0xC
	ldr x5, [x11, #102]
	b #0x8
	ldr x11, [x8]
