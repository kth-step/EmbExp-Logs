	ldr x13, [x12,x14]
	ldr x16, [x1, #234]
	cmp x12, x16
	b.eq #0xC
	ldr x19, [x13, #180]
	b #0x8
	ldr x5, [x17, #8]
