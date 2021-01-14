	ldr x8, [x23,x5]
	ldr x10, [x7, #101]
	cmp x23, x10
	b.eq #0xC
	ldr x29, [x8, #79]
	b #0x8
	ldr x26, [x17, #8]
