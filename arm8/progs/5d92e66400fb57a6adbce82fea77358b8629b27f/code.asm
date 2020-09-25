	ldr x17, [x5,x27]
	ldr x1, [x15, #0]
	cmp x5, x1
	b.eq #0xC
	ldr x28, [x17, #101]
	b #0x8
	ldr x8, [x2, #4]
