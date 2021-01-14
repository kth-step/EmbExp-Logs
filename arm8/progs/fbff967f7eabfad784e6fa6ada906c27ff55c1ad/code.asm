	ldr x17, [x12,x7]
	ldr x19, [x13, #136]
	cmp x12, x19
	b.eq #0xC
	ldr x12, [x17, #190]
	b #0x8
	ldr x21, [x21]
