	ldr x24, [x23,x27]
	ldr x13, [x16, #176]
	cmp x23, x13
	b.eq #0xC
	ldr x20, [x24, #211]
	b #0x8
	ldr x16, [x14, #4]
