	ldr x19, [x8,x4]
	ldr x3, [x17, #4]
	cmp x8, x3
	b.eq #0xC
	ldr x12, [x19, #114]
	b #0x8
	ldr x20, [x4, #8]
