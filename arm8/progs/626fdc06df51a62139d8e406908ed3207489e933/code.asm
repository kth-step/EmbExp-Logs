	ldr x12, [x20,x26]
	ldr x21, [x7, #102]
	cmp x20, x21
	b.eq #0xC
	ldr x2, [x12, #141]
	b #0x8
	ldr x3, [x11, #4]
