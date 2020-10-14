	ldr x13, [x11,x10]
	ldr x9, [x20, #0]
	cmp x11, x9
	b.eq #0xC
	ldr x6, [x13, #108]
	b #0x8
	ldr x28, [x20, #8]
