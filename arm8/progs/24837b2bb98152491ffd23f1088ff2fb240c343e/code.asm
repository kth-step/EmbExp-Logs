	ldr x16, [x22,x7]
	ldr x0, [x10, #134]
	cmp x22, x0
	b.eq #0xC
	ldr x4, [x16, #141]
	b #0x8
	ldr x12, [x13]
