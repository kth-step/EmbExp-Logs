	ldr x20, [x1,x2]
	ldr x24, [x2, #0]
	cmp x1, x24
	b.eq #0xC
	ldr x22, [x20, #223]
	b #0x8
	ldr x5, [x27, #16]
