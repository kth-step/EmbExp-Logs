	ldr x4, [x11,x6]
	ldr x14, [x22, #28]
	cmp x11, x14
	b.eq #0xC
	ldr x24, [x4, #180]
	b #0x8
	ldr x5, [x23, #16]
