	ldr x8, [x5,x26]
	ldr x26, [x20, #120]
	cmp x5, x26
	b.eq #0xC
	ldr x23, [x8, #179]
	b #0x8
	ldr x24, [x8]
