	ldr x26, [x28,x22]
	ldr x9, [x13, #0]
	cmp x28, x9
	b.eq #0xC
	ldr x12, [x26, #172]
	b #0x8
	ldr x7, [x15]
