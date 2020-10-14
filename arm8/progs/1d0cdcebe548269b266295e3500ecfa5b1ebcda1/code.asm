	ldr x11, [x12,x9]
	ldr x16, [x28, #0]
	cmp x12, x16
	b.eq #0xC
	ldr x7, [x11, #206]
	b #0x8
	ldr x23, [x9, #4]
