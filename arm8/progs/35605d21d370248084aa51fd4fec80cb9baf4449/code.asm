	ldr x6, [x8,x14]
	ldr x22, [x14, #14]
	cmp x8, x22
	b.eq #0xC
	ldr x7, [x6, #193]
	b #0x8
	ldr x13, [x15]
