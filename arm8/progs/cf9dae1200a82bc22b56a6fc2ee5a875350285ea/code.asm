	ldr x6, [x19,x13]
	ldr x17, [x26, #0]
	cmp x19, x17
	b.eq #0xC
	ldr x12, [x6, #60]
	b #0x8
	ldr x1, [x3]
