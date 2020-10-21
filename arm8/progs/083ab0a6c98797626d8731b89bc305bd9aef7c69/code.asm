	ldr x3, [x8,x15]
	ldr x4, [x19, #0]
	cmp x8, x4
	b.eq #0xC
	ldr x20, [x3, #179]
	b #0x8
	ldr x22, [x11, #8]
