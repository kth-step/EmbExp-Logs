	ldr x17, [x24,x6]
	ldr x21, [x14, #125]
	cmp x24, x21
	b.eq #0xC
	ldr x18, [x17, #50]
	b #0x8
	ldr x22, [x8, #8]
