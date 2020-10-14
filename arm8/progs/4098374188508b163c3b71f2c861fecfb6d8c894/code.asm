	ldr x5, [x23,x10]
	ldr x12, [x6, #0]
	cmp x23, x12
	b.eq #0xC
	ldr x22, [x5, #55]
	b #0x8
	ldr x22, [x14, #8]
