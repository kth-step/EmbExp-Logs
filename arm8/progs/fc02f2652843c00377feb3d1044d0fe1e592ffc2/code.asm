	ldr x12, [x26,x5]
	ldr x6, [x26, #0]
	cmp x26, x6
	b.eq #0xC
	ldr x5, [x12, #80]
	b #0x8
	ldr x6, [x15, #16]
