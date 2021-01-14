	ldr x6, [x2,x5]
	ldr x27, [x22, #50]
	cmp x2, x27
	b.eq #0xC
	ldr x16, [x6, #127]
	b #0x8
	ldr x29, [x13]
