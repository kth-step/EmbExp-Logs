	ldr x13, [x19,x7]
	ldr x24, [x2, #0]
	cmp x19, x24
	b.eq #0xC
	ldr x20, [x13, #61]
	b #0x8
	ldr x26, [x15, #16]
