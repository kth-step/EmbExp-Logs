	ldr x4, [x7,x17]
	ldr x5, [x29, #23]
	cmp x7, x5
	b.eq #0xC
	ldr x12, [x4, #199]
	b #0x8
	ldr x3, [x22]
