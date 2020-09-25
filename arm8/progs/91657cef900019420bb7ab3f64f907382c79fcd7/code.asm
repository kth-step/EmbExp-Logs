	ldr x19, [x26,x17]
	ldr x8, [x16, #0]
	cmp x26, x8
	b.eq #0xC
	ldr x9, [x19, #50]
	b #0x8
	ldr x7, [x11, #4]
