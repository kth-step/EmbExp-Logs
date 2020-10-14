	ldr x4, [x6,x2]
	ldr x15, [x0, #0]
	cmp x6, x15
	b.eq #0xC
	ldr x28, [x4, #134]
	b #0x8
	ldr x23, [x8]
