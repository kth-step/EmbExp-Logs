	ldr x5, [x17,x16]
	ldr x17, [x22, #0]
	cmp x17, x17
	b.eq #0xC
	ldr x14, [x5, #141]
	b #0x8
	ldr x24, [x16, #16]
