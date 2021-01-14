	ldr x25, [x28,x26]
	ldr x21, [x6, #5]
	cmp x28, x21
	b.eq #0xC
	ldr x11, [x25, #1]
	b #0x8
	ldr x19, [x13, #16]
