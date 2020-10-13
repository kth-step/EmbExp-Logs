	ldr x27, [x16,x26]
	ldr x11, [x10, #0]
	cmp x16, x11
	b.eq #0xC
	ldr x26, [x27, #245]
	b #0x8
	ldr x15, [x29, #16]
