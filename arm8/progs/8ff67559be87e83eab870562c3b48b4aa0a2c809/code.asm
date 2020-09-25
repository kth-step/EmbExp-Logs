	ldr x17, [x22,x26]
	ldr x28, [x24, #0]
	cmp x22, x28
	b.eq #0xC
	ldr x13, [x17, #185]
	b #0x8
	ldr x2, [x0]
