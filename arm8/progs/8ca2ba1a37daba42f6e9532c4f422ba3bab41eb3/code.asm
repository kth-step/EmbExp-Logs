	ldr x7, [x22,x26]
	ldr x17, [x2, #0]
	cmp x22, x17
	b.eq #0xC
	ldr x12, [x7, #35]
	b #0x8
	ldr x26, [x27, #8]
