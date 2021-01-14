	ldr x26, [x7,x2]
	ldr x19, [x12, #146]
	cmp x7, x19
	b.eq #0xC
	ldr x15, [x26, #79]
	b #0x8
	ldr x25, [x16, #8]
