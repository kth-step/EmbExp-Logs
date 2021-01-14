	ldr x17, [x20,x16]
	ldr x2, [x5, #215]
	cmp x20, x2
	b.eq #0xC
	ldr x26, [x17, #125]
	b #0x8
	ldr x28, [x10]
