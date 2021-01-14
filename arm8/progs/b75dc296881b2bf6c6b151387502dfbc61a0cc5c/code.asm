	ldr x19, [x14,x3]
	ldr x9, [x19, #120]
	cmp x14, x9
	b.eq #0xC
	ldr x16, [x19, #136]
	b #0x8
	ldr x12, [x23]
