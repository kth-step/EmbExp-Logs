	ldr x17, [x14,x26]
	ldr x20, [x26, #76]
	cmp x14, x20
	b.eq #0xC
	ldr x22, [x17, #12]
	b #0x8
	ldr x24, [x8, #4]
