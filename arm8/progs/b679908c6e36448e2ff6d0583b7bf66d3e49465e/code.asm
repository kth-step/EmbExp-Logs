	ldr x2, [x1,x18]
	ldr x24, [x17, #0]
	cmp x1, x24
	b.eq #0xC
	ldr x15, [x2, #187]
	b #0x8
	ldr x8, [x9]
