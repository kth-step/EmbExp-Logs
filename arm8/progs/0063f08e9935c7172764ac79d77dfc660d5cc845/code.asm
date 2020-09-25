	ldr x27, [x6,x16]
	ldr x3, [x16, #0]
	cmp x6, x3
	b.eq #0xC
	ldr x12, [x27, #134]
	b #0x8
	ldr x27, [x22, #8]
