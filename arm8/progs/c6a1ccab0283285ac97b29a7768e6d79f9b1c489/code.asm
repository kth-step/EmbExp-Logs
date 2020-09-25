	ldr x22, [x3,x4]
	ldr x19, [x5, #0]
	cmp x3, x19
	b.eq #0xC
	ldr x18, [x22, #79]
	b #0x8
	ldr x26, [x9]
