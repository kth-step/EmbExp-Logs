	ldr x4, [x23,x5]
	ldr x22, [x17, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x20, [x4, #45]
	b #0x8
	ldr x10, [x17]
