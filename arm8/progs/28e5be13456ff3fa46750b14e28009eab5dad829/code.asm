	ldr x26, [x2,x22]
	ldr x7, [x6, #0]
	cmp x2, x7
	b.eq #0xC
	ldr x9, [x26, #99]
	b #0x8
	ldr x4, [x1]
