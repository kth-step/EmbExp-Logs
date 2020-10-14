	ldr x26, [x8,x9]
	ldr x0, [x7, #0]
	cmp x8, x0
	b.eq #0xC
	ldr x10, [x26, #0]
	b #0x8
	ldr x20, [x19, #4]
