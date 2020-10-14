	ldr x20, [x24,x26]
	ldr x26, [x17, #0]
	cmp x24, x26
	b.eq #0xC
	ldr x14, [x20, #167]
	b #0x8
	ldr x6, [x8, #16]
