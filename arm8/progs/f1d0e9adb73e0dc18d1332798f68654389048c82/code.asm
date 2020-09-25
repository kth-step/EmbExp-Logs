	ldr x17, [x24,x28]
	ldr x20, [x26, #0]
	cmp x24, x20
	b.eq #0xC
	ldr x18, [x17, #127]
	b #0x8
	ldr x20, [x4, #4]
