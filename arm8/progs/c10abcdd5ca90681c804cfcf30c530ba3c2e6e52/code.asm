	ldr x20, [x16,x13]
	ldr x24, [x4, #29]
	cmp x16, x24
	b.eq #0xC
	ldr x14, [x20, #207]
	b #0x8
	ldr x20, [x26]
