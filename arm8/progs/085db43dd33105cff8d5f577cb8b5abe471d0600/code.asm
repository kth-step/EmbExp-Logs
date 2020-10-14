	ldr x16, [x19,x20]
	ldr x11, [x6, #0]
	cmp x19, x11
	b.eq #0xC
	ldr x12, [x16, #120]
	b #0x8
	ldr x11, [x18, #4]
