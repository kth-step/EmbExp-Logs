	ldr x18, [x2,x24]
	ldr x27, [x8, #64]
	cmp x2, x27
	b.eq #0xC
	ldr x20, [x18, #125]
	b #0x8
	ldr x18, [x9, #8]
