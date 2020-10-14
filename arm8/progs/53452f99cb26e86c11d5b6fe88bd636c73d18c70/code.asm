	ldr x12, [x23,x6]
	ldr x20, [x23, #0]
	cmp x23, x20
	b.eq #0xC
	ldr x4, [x12, #137]
	b #0x8
	ldr x14, [x8]
