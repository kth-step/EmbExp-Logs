	ldr x26, [x14,x3]
	ldr x17, [x26, #0]
	cmp x14, x17
	b.eq #0xC
	ldr x15, [x26, #98]
	b #0x8
	ldr x18, [x0, #8]
