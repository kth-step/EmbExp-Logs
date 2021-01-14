	ldr x12, [x26,x15]
	ldr x24, [x17, #101]
	cmp x26, x24
	b.eq #0xC
	ldr x14, [x12, #125]
	b #0x8
	ldr x5, [x23]
