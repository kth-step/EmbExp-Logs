	ldr x13, [x22,x29]
	ldr x3, [x26, #238]
	cmp x22, x3
	b.eq #0xC
	ldr x22, [x13, #11]
	b #0x8
	ldr x20, [x21]
