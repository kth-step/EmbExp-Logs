	ldr x20, [x6,x22]
	ldr x22, [x18, #0]
	cmp x6, x22
	b.eq #0xC
	ldr x18, [x20, #199]
	b #0x8
	ldr x12, [x20, #16]
