	ldr x6, [x8,x24]
	ldr x27, [x17, #122]
	cmp x8, x27
	b.eq #0xC
	ldr x21, [x6, #64]
	b #0x8
	ldr x29, [x16, #4]
