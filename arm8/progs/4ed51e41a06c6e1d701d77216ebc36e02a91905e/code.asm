	ldr x23, [x22,x9]
	ldr x4, [x21, #0]
	cmp x22, x4
	b.eq #0xC
	ldr x13, [x23, #179]
	b #0x8
	ldr x23, [x7, #8]
