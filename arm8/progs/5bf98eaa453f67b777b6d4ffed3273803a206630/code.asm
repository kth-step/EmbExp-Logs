	ldr x12, [x2,x19]
	ldr x9, [x24, #0]
	cmp x2, x9
	b.eq #0xC
	ldr x25, [x12, #29]
	b #0x8
	ldr x26, [x1, #16]
