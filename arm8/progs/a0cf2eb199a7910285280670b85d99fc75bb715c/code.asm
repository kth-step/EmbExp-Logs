	ldr x4, [x15,x13]
	ldr x13, [x3, #0]
	cmp x15, x13
	b.eq #0xC
	ldr x22, [x4, #197]
	b #0x8
	ldr x5, [x21]
