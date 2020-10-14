	ldr x23, [x16,x12]
	ldr x4, [x24, #0]
	cmp x16, x4
	b.eq #0xC
	ldr x14, [x23, #31]
	b #0x8
	ldr x5, [x15, #4]
