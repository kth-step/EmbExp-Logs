	ldr x12, [x2,x26]
	ldr x0, [x23, #154]
	cmp x2, x0
	b.eq #0xC
	ldr x19, [x12, #234]
	b #0x8
	ldr x21, [x4, #8]
