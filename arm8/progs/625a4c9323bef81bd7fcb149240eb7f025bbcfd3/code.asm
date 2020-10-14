	ldr x3, [x22,x18]
	ldr x0, [x5, #0]
	cmp x22, x0
	b.eq #0xC
	ldr x9, [x3, #35]
	b #0x8
	ldr x15, [x12, #16]
