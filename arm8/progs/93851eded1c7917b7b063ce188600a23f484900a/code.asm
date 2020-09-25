	ldr x7, [x10,x14]
	ldr x21, [x13, #0]
	cmp x10, x21
	b.eq #0xC
	ldr x22, [x7, #250]
	b #0x8
	ldr x22, [x13, #16]
