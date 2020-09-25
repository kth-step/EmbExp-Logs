	ldr x14, [x15,x15]
	ldr x17, [x4, #0]
	cmp x15, x17
	b.eq #0xC
	ldr x23, [x14, #86]
	b #0x8
	ldr x0, [x0, #16]
