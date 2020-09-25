	ldr x28, [x26,x11]
	ldr x27, [x10, #0]
	cmp x26, x27
	b.eq #0xC
	ldr x23, [x28, #52]
	b #0x8
	ldr x24, [x21, #4]
