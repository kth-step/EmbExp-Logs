	ldr x17, [x13,x4]
	ldr x20, [x15, #0]
	cmp x13, x20
	b.eq #0xC
	ldr x26, [x17, #5]
	b #0x8
	ldr x18, [x9, #4]
