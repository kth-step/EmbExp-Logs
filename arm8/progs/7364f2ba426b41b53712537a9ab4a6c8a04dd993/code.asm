	ldr x8, [x12,x21]
	ldr x5, [x24, #0]
	cmp x12, x5
	b.eq #0xC
	ldr x13, [x8, #70]
	b #0x8
	ldr x26, [x23, #16]
