	ldr x7, [x4,x2]
	ldr x19, [x14, #0]
	cmp x4, x19
	b.eq #0xC
	ldr x16, [x7, #200]
	b #0x8
	ldr x23, [x22, #4]
