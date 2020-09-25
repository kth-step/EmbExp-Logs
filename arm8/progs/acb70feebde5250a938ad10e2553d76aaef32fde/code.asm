	ldr x22, [x20,x23]
	ldr x14, [x22, #0]
	cmp x20, x14
	b.eq #0xC
	ldr x5, [x22, #92]
	b #0x8
	ldr x21, [x1, #16]
