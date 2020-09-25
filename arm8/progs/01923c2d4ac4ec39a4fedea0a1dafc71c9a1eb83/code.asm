	ldr x18, [x14,x6]
	ldr x24, [x15, #0]
	cmp x14, x24
	b.eq #0xC
	ldr x5, [x18, #33]
	b #0x8
	ldr x9, [x29]
