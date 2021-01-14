	ldr x26, [x22,x10]
	ldr x17, [x9, #6]
	cmp x22, x17
	b.eq #0xC
	ldr x24, [x26, #9]
	b #0x8
	ldr x4, [x1, #4]
