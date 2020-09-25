	ldr x9, [x4,x1]
	ldr x1, [x10, #0]
	cmp x4, x1
	b.eq #0xC
	ldr x24, [x9, #216]
	b #0x8
	ldr x3, [x3, #8]
