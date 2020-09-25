	ldr x26, [x21,x15]
	ldr x4, [x5, #0]
	cmp x21, x4
	b.eq #0xC
	ldr x28, [x26, #154]
	b #0x8
	ldr x20, [x11, #8]
