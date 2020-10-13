	ldr x15, [x7,x1]
	ldr x28, [x2, #0]
	cmp x7, x28
	b.eq #0xC
	ldr x29, [x15, #160]
	b #0x8
	ldr x10, [x21, #4]
