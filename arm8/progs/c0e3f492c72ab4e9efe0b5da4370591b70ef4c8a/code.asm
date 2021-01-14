	ldr x18, [x25,x25]
	ldr x25, [x18, #172]
	cmp x25, x25
	b.eq #0xC
	ldr x25, [x18, #133]
	b #0x8
	ldr x1, [x29, #4]
