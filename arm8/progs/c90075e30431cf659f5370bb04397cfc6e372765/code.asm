	ldr x11, [x28,x1]
	ldr x19, [x13, #0]
	cmp x28, x19
	b.eq #0xC
	ldr x12, [x11, #226]
	b #0x8
	ldr x27, [x5, #4]
