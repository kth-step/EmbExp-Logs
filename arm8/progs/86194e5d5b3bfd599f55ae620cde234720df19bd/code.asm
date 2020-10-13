	ldr x16, [x26,x0]
	ldr x11, [x29, #0]
	cmp x26, x11
	b.eq #0xC
	ldr x0, [x16, #245]
	b #0x8
	ldr x17, [x16]
