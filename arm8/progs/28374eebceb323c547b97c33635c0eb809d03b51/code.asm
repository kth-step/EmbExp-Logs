	ldr x10, [x21,x23]
	ldr x8, [x2, #0]
	cmp x21, x8
	b.eq #0xC
	ldr x17, [x10, #215]
	b #0x8
	ldr x22, [x0, #16]
