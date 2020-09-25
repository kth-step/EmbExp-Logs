	ldr x27, [x24,x8]
	ldr x21, [x11, #0]
	cmp x24, x21
	b.eq #0xC
	ldr x13, [x27, #204]
	b #0x8
	ldr x19, [x8, #4]
