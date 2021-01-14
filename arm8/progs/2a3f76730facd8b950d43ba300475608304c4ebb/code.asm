	ldr x17, [x8,x7]
	ldr x6, [x8, #231]
	cmp x8, x6
	b.eq #0xC
	ldr x21, [x17, #44]
	b #0x8
	ldr x3, [x5, #4]
