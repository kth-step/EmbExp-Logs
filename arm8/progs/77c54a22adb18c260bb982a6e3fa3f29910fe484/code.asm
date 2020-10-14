	ldr x13, [x18,x19]
	ldr x2, [x13, #0]
	cmp x18, x2
	b.eq #0xC
	ldr x2, [x13, #179]
	b #0x8
	ldr x20, [x15, #8]
