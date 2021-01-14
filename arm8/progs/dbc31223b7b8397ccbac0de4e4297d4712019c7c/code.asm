	ldr x14, [x3,x4]
	ldr x10, [x4, #185]
	cmp x3, x10
	b.eq #0xC
	ldr x17, [x14, #151]
	b #0x8
	ldr x19, [x16, #4]
