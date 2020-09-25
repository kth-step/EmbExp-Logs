	ldr x23, [x14,x28]
	ldr x0, [x20, #0]
	cmp x14, x0
	b.eq #0xC
	ldr x24, [x23, #125]
	b #0x8
	ldr x27, [x21, #8]
