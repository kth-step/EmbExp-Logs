	ldr x6, [x3,x27]
	ldr x19, [x17, #0]
	cmp x3, x19
	b.eq #0xC
	ldr x13, [x6, #124]
	b #0x8
	ldr x24, [x12, #8]
