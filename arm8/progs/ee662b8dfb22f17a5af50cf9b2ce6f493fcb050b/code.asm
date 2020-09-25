	ldr x13, [x7,x3]
	ldr x4, [x17, #0]
	cmp x7, x4
	b.eq #0xC
	ldr x28, [x13, #154]
	b #0x8
	ldr x23, [x6]
