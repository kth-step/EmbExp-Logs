	ldr x3, [x16,x13]
	ldr x0, [x23, #0]
	cmp x16, x0
	b.eq #0xC
	ldr x12, [x3, #90]
	b #0x8
	ldr x22, [x19, #4]
