	ldr x13, [x19,x22]
	ldr x9, [x22, #146]
	cmp x19, x9
	b.eq #0xC
	ldr x5, [x13, #232]
	b #0x8
	ldr x12, [x7, #4]
