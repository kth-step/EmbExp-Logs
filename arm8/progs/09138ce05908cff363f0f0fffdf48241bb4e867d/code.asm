	ldr x9, [x12,x29]
	ldr x23, [x4, #200]
	cmp x12, x23
	b.eq #0xC
	ldr x15, [x9, #220]
	b #0x8
	ldr x13, [x0]
