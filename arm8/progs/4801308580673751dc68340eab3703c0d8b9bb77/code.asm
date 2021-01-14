	ldr x12, [x14,x13]
	ldr x16, [x19, #136]
	cmp x14, x16
	b.eq #0xC
	ldr x13, [x12, #121]
	b #0x8
	ldr x19, [x12]
