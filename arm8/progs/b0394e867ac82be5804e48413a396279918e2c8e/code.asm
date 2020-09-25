	ldr x9, [x21,x19]
	ldr x13, [x12, #0]
	cmp x21, x13
	b.eq #0xC
	ldr x27, [x9, #211]
	b #0x8
	ldr x17, [x17, #4]
