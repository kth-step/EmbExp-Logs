	ldr x2, [x16,x16]
	ldr x7, [x2, #178]
	cmp x16, x7
	b.eq #0xC
	ldr x9, [x2, #139]
	b #0x8
	ldr x19, [x6, #4]
