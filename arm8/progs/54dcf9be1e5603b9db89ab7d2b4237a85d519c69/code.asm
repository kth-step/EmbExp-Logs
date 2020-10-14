	ldr x15, [x3,x12]
	ldr x9, [x20, #0]
	cmp x3, x9
	b.eq #0xC
	ldr x12, [x15, #255]
	b #0x8
	ldr x23, [x0, #16]
