	ldr x12, [x5,x20]
	ldr x19, [x9, #0]
	cmp x5, x19
	b.eq #0xC
	ldr x8, [x12, #238]
	b #0x8
	ldr x6, [x9, #4]
