	ldr x9, [x24,x10]
	ldr x6, [x28, #0]
	cmp x24, x6
	b.eq #0xC
	ldr x26, [x9, #47]
	b #0x8
	ldr x7, [x28]
