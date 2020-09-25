	ldr x11, [x20,x22]
	ldr x6, [x15, #0]
	cmp x20, x6
	b.eq #0xC
	ldr x20, [x11, #125]
	b #0x8
	ldr x18, [x3]
