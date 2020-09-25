	ldr x26, [x9,x12]
	ldr x20, [x0, #0]
	cmp x9, x20
	b.eq #0xC
	ldr x23, [x26, #255]
	b #0x8
	ldr x15, [x26]
