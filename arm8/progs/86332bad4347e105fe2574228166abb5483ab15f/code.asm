	ldr x21, [x14,x19]
	ldr x18, [x21, #120]
	cmp x14, x18
	b.eq #0xC
	ldr x22, [x21, #49]
	b #0x8
	ldr x0, [x12, #4]
