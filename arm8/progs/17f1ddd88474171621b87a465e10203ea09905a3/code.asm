	ldr x18, [x13,x19]
	ldr x27, [x16, #0]
	cmp x13, x27
	b.eq #0xC
	ldr x11, [x18, #78]
	b #0x8
	ldr x29, [x9, #8]
