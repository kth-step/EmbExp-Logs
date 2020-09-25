	ldr x19, [x12,x28]
	ldr x15, [x19, #0]
	cmp x12, x15
	b.eq #0xC
	ldr x6, [x19, #174]
	b #0x8
	ldr x6, [x26, #4]
