	ldr x8, [x10,x13]
	ldr x14, [x23, #0]
	cmp x10, x14
	b.eq #0xC
	ldr x22, [x8, #127]
	b #0x8
	ldr x27, [x26, #8]
