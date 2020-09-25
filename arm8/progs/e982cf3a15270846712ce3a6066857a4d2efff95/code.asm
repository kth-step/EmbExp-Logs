	ldr x10, [x29,x22]
	ldr x17, [x4, #0]
	cmp x29, x17
	b.eq #0xC
	ldr x27, [x10, #238]
	b #0x8
	ldr x7, [x13, #16]
