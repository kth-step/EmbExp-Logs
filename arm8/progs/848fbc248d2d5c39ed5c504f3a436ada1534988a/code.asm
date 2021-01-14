	ldr x14, [x3,x3]
	ldr x4, [x10, #179]
	cmp x3, x4
	b.eq #0xC
	ldr x15, [x14, #114]
	b #0x8
	ldr x18, [x5, #4]
