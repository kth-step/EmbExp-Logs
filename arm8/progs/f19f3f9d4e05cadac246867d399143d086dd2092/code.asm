	ldr x12, [x18,x13]
	ldr x9, [x10, #0]
	cmp x18, x9
	b.eq #0xC
	ldr x22, [x12, #86]
	b #0x8
	ldr x3, [x6]
