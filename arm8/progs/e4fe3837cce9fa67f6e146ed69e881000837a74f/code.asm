	ldr x9, [x27,x8]
	ldr x5, [x7, #0]
	cmp x27, x5
	b.eq #0xC
	ldr x5, [x9, #214]
	b #0x8
	ldr x15, [x6, #4]
