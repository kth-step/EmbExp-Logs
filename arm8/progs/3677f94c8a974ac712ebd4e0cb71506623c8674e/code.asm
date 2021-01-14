	ldr x2, [x27,x12]
	ldr x1, [x6, #64]
	cmp x27, x1
	b.eq #0xC
	ldr x6, [x2, #107]
	b #0x8
	ldr x24, [x17, #16]
