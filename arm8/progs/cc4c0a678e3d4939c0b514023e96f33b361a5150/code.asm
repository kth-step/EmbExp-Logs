	ldr x20, [x3,x5]
	ldr x18, [x23, #0]
	cmp x3, x18
	b.eq #0xC
	ldr x18, [x20, #179]
	b #0x8
	ldr x15, [x21, #4]
