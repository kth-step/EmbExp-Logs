	ldr x6, [x18,x18]
	ldr x0, [x3, #232]
	cmp x18, x0
	b.eq #0xC
	ldr x18, [x6, #192]
	b #0x8
	ldr x26, [x29, #4]
