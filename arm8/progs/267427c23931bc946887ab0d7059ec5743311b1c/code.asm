	ldr x5, [x9,x27]
	ldr x1, [x10, #0]
	cmp x9, x1
	b.eq #0xC
	ldr x8, [x5, #172]
	b #0x8
	ldr x23, [x3]
