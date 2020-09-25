	ldr x26, [x10,x25]
	ldr x28, [x11, #0]
	cmp x10, x28
	b.eq #0xC
	ldr x20, [x26, #56]
	b #0x8
	ldr x14, [x26, #4]
