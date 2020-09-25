	ldr x5, [x7,x29]
	ldr x7, [x22, #0]
	cmp x7, x7
	b.eq #0xC
	ldr x16, [x5, #12]
	b #0x8
	ldr x24, [x9, #16]
