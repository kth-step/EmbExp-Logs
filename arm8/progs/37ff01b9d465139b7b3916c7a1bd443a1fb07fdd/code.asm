	ldr x7, [x28,x9]
	ldr x6, [x2, #0]
	cmp x28, x6
	b.eq #0xC
	ldr x8, [x7, #207]
	b #0x8
	ldr x9, [x26, #4]
