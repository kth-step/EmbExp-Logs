	ldr x14, [x8,x15]
	ldr x5, [x7, #10]
	cmp x8, x5
	b.eq #0xC
	ldr x23, [x14, #194]
	b #0x8
	ldr x18, [x5]
