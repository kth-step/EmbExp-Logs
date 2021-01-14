	ldr x10, [x7,x7]
	ldr x4, [x17, #233]
	cmp x7, x4
	b.eq #0xC
	ldr x2, [x10, #172]
	b #0x8
	ldr x6, [x2, #4]
