	ldr x2, [x15,x14]
	ldr x14, [x12, #0]
	cmp x15, x14
	b.eq #0xC
	ldr x9, [x2, #220]
	b #0x8
	ldr x22, [x15]
