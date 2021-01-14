	ldr x16, [x28,x15]
	ldr x8, [x0, #92]
	cmp x28, x8
	b.eq #0xC
	ldr x15, [x16, #172]
	b #0x8
	ldr x21, [x24, #4]
