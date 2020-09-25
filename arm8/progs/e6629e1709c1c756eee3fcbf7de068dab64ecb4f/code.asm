	ldr x5, [x13,x1]
	ldr x12, [x15, #0]
	cmp x13, x12
	b.eq #0xC
	ldr x1, [x5, #18]
	b #0x8
	ldr x28, [x21]
