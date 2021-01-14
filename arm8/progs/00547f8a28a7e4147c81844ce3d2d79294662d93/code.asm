	ldr x17, [x24,x21]
	ldr x13, [x27, #144]
	cmp x24, x13
	b.eq #0xC
	ldr x2, [x17, #127]
	b #0x8
	ldr x11, [x9, #16]
