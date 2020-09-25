	ldr x9, [x23,x1]
	ldr x17, [x22, #0]
	cmp x23, x17
	b.eq #0xC
	ldr x12, [x9, #156]
	b #0x8
	ldr x12, [x16]
