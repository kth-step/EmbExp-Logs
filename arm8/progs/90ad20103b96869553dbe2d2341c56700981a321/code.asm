	ldr x29, [x0,x19]
	ldr x14, [x5, #0]
	cmp x0, x14
	b.eq #0xC
	ldr x1, [x29, #128]
	b #0x8
	ldr x20, [x2]
