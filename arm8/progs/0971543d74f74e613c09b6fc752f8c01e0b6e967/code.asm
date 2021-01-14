	ldr x19, [x25,x4]
	ldr x27, [x0, #71]
	cmp x25, x27
	b.eq #0xC
	ldr x5, [x19, #125]
	b #0x8
	ldr x24, [x20, #16]
