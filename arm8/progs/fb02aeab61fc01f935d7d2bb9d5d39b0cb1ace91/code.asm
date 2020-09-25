	ldr x12, [x27,x15]
	ldr x6, [x0, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x20, [x12, #78]
	b #0x8
	ldr x11, [x15, #4]
