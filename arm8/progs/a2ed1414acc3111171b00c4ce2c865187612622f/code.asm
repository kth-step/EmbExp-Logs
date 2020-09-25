	ldr x26, [x13,x8]
	ldr x7, [x4, #0]
	cmp x13, x7
	b.eq #0xC
	ldr x24, [x26, #146]
	b #0x8
	ldr x4, [x11, #16]
