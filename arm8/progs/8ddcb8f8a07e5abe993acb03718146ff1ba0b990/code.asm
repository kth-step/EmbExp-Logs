	ldr x29, [x26,x0]
	ldr x20, [x3, #0]
	cmp x26, x20
	b.eq #0xC
	ldr x12, [x29, #166]
	b #0x8
	ldr x0, [x14]
