	ldr x26, [x16,x25]
	ldr x0, [x28, #0]
	cmp x16, x0
	b.eq #0xC
	ldr x15, [x26, #186]
	b #0x8
	ldr x21, [x4, #4]
