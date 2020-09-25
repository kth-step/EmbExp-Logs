	ldr x24, [x12,x6]
	ldr x6, [x12, #0]
	cmp x12, x6
	b.eq #0xC
	ldr x12, [x24, #0]
	b #0x8
	ldr x24, [x3, #16]
