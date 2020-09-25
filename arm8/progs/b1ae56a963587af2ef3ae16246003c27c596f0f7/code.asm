	ldr x24, [x27,x9]
	ldr x13, [x22, #0]
	cmp x27, x13
	b.eq #0xC
	ldr x10, [x24, #75]
	b #0x8
	ldr x17, [x14]
