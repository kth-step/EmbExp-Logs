	ldr x17, [x28,x12]
	ldr x3, [x1, #121]
	cmp x28, x3
	b.eq #0xC
	ldr x12, [x17, #79]
	b #0x8
	ldr x2, [x18, #4]
