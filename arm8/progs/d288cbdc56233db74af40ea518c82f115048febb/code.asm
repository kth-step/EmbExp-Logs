	ldr x20, [x18,x29]
	ldr x23, [x13, #86]
	cmp x18, x23
	b.eq #0xC
	ldr x11, [x20, #23]
	b #0x8
	ldr x15, [x26, #8]
