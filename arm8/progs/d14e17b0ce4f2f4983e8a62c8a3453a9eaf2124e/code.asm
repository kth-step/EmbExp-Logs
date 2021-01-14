	ldr x6, [x5,x27]
	ldr x16, [x27, #2]
	cmp x5, x16
	b.eq #0xC
	ldr x5, [x6, #121]
	b #0x8
	ldr x27, [x7, #4]
