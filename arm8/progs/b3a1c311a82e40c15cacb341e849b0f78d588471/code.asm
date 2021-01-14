	ldr x26, [x13,x2]
	ldr x5, [x19, #255]
	cmp x13, x5
	b.eq #0xC
	ldr x2, [x26, #32]
	b #0x8
	ldr x2, [x24, #16]
