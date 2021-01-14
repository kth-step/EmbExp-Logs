	ldr x13, [x12,x27]
	ldr x9, [x3, #51]
	cmp x12, x9
	b.eq #0xC
	ldr x9, [x13, #19]
	b #0x8
	ldr x0, [x3, #4]
