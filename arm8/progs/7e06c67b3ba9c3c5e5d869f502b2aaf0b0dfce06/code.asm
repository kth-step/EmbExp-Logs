	ldr x10, [x21,x11]
	ldr x11, [x24, #0]
	cmp x21, x11
	b.eq #0xC
	ldr x23, [x10, #252]
	b #0x8
	ldr x28, [x18, #8]
