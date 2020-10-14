	ldr x3, [x10,x8]
	ldr x11, [x28, #0]
	cmp x10, x11
	b.eq #0xC
	ldr x18, [x3, #1]
	b #0x8
	ldr x25, [x17, #16]
