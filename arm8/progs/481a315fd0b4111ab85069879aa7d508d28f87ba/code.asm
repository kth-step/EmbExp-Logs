	ldr x22, [x2,x10]
	ldr x19, [x17, #145]
	cmp x2, x19
	b.eq #0xC
	ldr x21, [x22, #157]
	b #0x8
	ldr x18, [x5, #8]
