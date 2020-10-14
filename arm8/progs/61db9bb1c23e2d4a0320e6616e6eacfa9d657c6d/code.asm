	ldr x22, [x28,x21]
	ldr x2, [x11, #0]
	cmp x28, x2
	b.eq #0xC
	ldr x12, [x22, #35]
	b #0x8
	ldr x21, [x28, #8]
