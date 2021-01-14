	ldr x26, [x9,x9]
	ldr x2, [x14, #238]
	cmp x9, x2
	b.eq #0xC
	ldr x23, [x26, #4]
	b #0x8
	ldr x17, [x22]
