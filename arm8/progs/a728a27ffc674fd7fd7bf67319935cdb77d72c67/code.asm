	ldr x2, [x22,x15]
	ldr x9, [x26, #0]
	cmp x22, x9
	b.eq #0xC
	ldr x17, [x2, #205]
	b #0x8
	ldr x27, [x13, #4]
