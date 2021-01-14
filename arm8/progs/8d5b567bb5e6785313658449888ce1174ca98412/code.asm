	ldr x9, [x28,x11]
	ldr x15, [x9, #71]
	cmp x28, x15
	b.eq #0xC
	ldr x28, [x9, #151]
	b #0x8
	ldr x7, [x10]
