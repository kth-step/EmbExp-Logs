	ldr x20, [x29,x27]
	ldr x28, [x26, #121]
	cmp x29, x28
	b.eq #0xC
	ldr x29, [x20, #172]
	b #0x8
	ldr x4, [x8, #4]
