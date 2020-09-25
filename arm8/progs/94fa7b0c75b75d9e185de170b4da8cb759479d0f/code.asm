	ldr x26, [x2,x14]
	ldr x8, [x29, #0]
	cmp x2, x8
	b.eq #0xC
	ldr x12, [x26, #234]
	b #0x8
	ldr x23, [x25, #16]
