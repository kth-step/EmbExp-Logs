	ldr x17, [x16,x8]
	ldr x9, [x16, #183]
	cmp x16, x9
	b.eq #0xC
	ldr x28, [x17, #172]
	b #0x8
	ldr x20, [x14, #16]
