	ldr x19, [x5,x14]
	ldr x7, [x12, #153]
	cmp x5, x7
	b.eq #0xC
	ldr x24, [x19, #223]
	b #0x8
	ldr x13, [x15]
