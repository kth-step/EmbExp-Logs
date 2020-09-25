	ldr x22, [x14,x12]
	ldr x21, [x3, #0]
	cmp x14, x21
	b.eq #0xC
	ldr x17, [x22, #220]
	b #0x8
	ldr x7, [x15, #8]
