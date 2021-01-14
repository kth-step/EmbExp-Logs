	ldr x15, [x11,x14]
	ldr x7, [x1, #200]
	cmp x11, x7
	b.eq #0xC
	ldr x13, [x15, #35]
	b #0x8
	ldr x28, [x10]
