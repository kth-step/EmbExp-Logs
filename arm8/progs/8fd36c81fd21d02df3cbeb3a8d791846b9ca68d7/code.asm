	ldr x17, [x18,x12]
	ldr x6, [x18, #0]
	cmp x18, x6
	b.eq #0xC
	ldr x1, [x17, #25]
	b #0x8
	ldr x29, [x7, #8]
