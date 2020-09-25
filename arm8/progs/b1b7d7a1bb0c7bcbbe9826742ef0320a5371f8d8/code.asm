	ldr x12, [x17,x13]
	ldr x28, [x20, #0]
	cmp x17, x28
	b.eq #0xC
	ldr x20, [x12, #23]
	b #0x8
	ldr x11, [x18, #4]
