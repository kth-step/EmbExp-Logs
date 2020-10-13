	ldr x27, [x10,x7]
	ldr x23, [x12, #0]
	cmp x10, x23
	b.eq #0xC
	ldr x15, [x27, #127]
	b #0x8
	ldr x27, [x15, #4]
