	ldr x24, [x7,x4]
	ldr x1, [x6, #0]
	cmp x7, x1
	b.eq #0xC
	ldr x22, [x24, #127]
	b #0x8
	ldr x15, [x12]
