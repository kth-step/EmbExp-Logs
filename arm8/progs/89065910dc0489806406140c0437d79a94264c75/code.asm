	ldr x16, [x15,x5]
	ldr x5, [x16, #0]
	cmp x15, x5
	b.eq #0xC
	ldr x15, [x16, #129]
	b #0x8
	ldr x8, [x27, #4]
