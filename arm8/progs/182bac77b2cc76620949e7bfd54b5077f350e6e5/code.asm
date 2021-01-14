	ldr x10, [x2,x9]
	ldr x3, [x16, #85]
	cmp x2, x3
	b.eq #0xC
	ldr x18, [x10, #172]
	b #0x8
	ldr x13, [x18, #4]
