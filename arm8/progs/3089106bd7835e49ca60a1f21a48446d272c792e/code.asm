	ldr x22, [x25,x23]
	ldr x8, [x28, #0]
	cmp x25, x8
	b.eq #0xC
	ldr x15, [x22, #125]
	b #0x8
	ldr x14, [x6, #8]
