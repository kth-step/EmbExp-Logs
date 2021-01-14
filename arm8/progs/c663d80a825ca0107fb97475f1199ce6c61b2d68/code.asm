	ldr x29, [x25,x4]
	ldr x0, [x2, #150]
	cmp x25, x0
	b.eq #0xC
	ldr x10, [x29, #172]
	b #0x8
	ldr x13, [x26, #16]
