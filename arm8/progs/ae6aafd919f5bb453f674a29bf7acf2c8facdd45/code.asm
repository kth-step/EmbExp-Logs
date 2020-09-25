	ldr x27, [x6,x3]
	ldr x5, [x10, #0]
	cmp x6, x5
	b.eq #0xC
	ldr x26, [x27, #23]
	b #0x8
	ldr x28, [x5, #4]
