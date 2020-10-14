	ldr x20, [x1,x16]
	ldr x28, [x1, #0]
	cmp x1, x28
	b.eq #0xC
	ldr x26, [x20, #71]
	b #0x8
	ldr x11, [x8]
