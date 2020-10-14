	ldr x22, [x6,x27]
	ldr x9, [x13, #0]
	cmp x6, x9
	b.eq #0xC
	ldr x6, [x22, #58]
	b #0x8
	ldr x10, [x5, #4]
