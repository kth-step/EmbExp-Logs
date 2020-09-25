	ldr x2, [x8,x25]
	ldr x24, [x7, #0]
	cmp x8, x24
	b.eq #0xC
	ldr x22, [x2, #134]
	b #0x8
	ldr x19, [x24, #8]
