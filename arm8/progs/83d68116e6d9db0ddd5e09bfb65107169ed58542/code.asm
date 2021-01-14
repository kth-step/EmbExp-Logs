	ldr x28, [x20,x24]
	ldr x11, [x7, #63]
	cmp x20, x11
	b.eq #0xC
	ldr x12, [x28, #250]
	b #0x8
	ldr x10, [x1, #4]
