	ldr x6, [x1,x4]
	ldr x17, [x22, #0]
	cmp x1, x17
	b.eq #0xC
	ldr x20, [x6, #127]
	b #0x8
	ldr x28, [x29, #4]
