	ldr x7, [x25,x14]
	ldr x26, [x14, #0]
	cmp x25, x26
	b.eq #0xC
	ldr x4, [x7, #166]
	b #0x8
	ldr x12, [x20, #8]
