	ldr x10, [x27,x18]
	ldr x15, [x28, #59]
	cmp x27, x15
	b.eq #0xC
	ldr x16, [x10, #198]
	b #0x8
	ldr x10, [x26, #8]
