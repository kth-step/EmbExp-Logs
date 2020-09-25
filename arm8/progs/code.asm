	ldr x2, [x18,x9]
	ldr x21, [x28, #0]
	cmp x18, x21
	b.eq #0xC
	ldr x16, [x2, #50]
	b #0x8
	ldr x3, [x5, #4]
