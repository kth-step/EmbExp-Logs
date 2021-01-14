	ldr x4, [x20,x17]
	ldr x12, [x27, #76]
	cmp x20, x12
	b.eq #0xC
	ldr x27, [x4, #211]
	b #0x8
	ldr x7, [x17, #16]
