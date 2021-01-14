	ldr x16, [x12,x15]
	ldr x17, [x2, #13]
	cmp x12, x17
	b.eq #0xC
	ldr x22, [x16, #221]
	b #0x8
	ldr x10, [x10]
