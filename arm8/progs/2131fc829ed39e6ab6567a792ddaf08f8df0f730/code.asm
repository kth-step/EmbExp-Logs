	ldr x19, [x0,x13]
	ldr x14, [x5, #0]
	cmp x0, x14
	b.eq #0xC
	ldr x4, [x19, #226]
	b #0x8
	ldr x24, [x25, #8]
