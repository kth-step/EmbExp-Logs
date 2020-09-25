	ldr x5, [x12,x14]
	ldr x28, [x23, #0]
	cmp x12, x28
	b.eq #0xC
	ldr x26, [x5, #90]
	b #0x8
	ldr x28, [x2, #8]
