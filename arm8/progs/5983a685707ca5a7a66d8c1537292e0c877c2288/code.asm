	ldr x6, [x20,x24]
	ldr x20, [x8, #0]
	cmp x20, x20
	b.eq #0xC
	ldr x5, [x6, #215]
	b #0x8
	ldr x17, [x13, #8]
