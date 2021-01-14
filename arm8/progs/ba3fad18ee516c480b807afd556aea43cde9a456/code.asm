	ldr x3, [x22,x27]
	ldr x5, [x23, #162]
	cmp x22, x5
	b.eq #0xC
	ldr x20, [x3, #26]
	b #0x8
	ldr x12, [x20, #8]
