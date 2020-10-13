	ldr x17, [x0,x4]
	ldr x10, [x19, #0]
	cmp x0, x10
	b.eq #0xC
	ldr x4, [x17, #128]
	b #0x8
	ldr x2, [x6, #8]
