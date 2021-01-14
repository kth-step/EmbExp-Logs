	ldr x14, [x6,x5]
	ldr x17, [x1, #141]
	cmp x6, x17
	b.eq #0xC
	ldr x22, [x14, #104]
	b #0x8
	ldr x15, [x29, #16]
