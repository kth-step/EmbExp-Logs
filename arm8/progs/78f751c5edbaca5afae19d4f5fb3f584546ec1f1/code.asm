	ldr x13, [x5,x2]
	ldr x12, [x28, #0]
	cmp x5, x12
	b.eq #0xC
	ldr x9, [x13, #228]
	b #0x8
	ldr x24, [x18, #16]
