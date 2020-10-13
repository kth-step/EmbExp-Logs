	ldr x9, [x11,x26]
	ldr x27, [x16, #0]
	cmp x11, x27
	b.eq #0xC
	ldr x5, [x9, #0]
	b #0x8
	ldr x18, [x27, #4]
