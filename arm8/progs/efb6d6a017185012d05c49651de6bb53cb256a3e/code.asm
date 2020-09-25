	ldr x27, [x24,x2]
	ldr x26, [x0, #0]
	cmp x24, x26
	b.eq #0xC
	ldr x21, [x27, #4]
	b #0x8
	ldr x26, [x4, #4]
