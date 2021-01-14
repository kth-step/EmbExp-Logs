	ldr x15, [x29,x4]
	ldr x25, [x21, #65]
	cmp x29, x25
	b.eq #0xC
	ldr x14, [x15, #125]
	b #0x8
	ldr x16, [x6, #16]
