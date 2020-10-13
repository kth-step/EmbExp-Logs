	ldr x12, [x14,x22]
	ldr x25, [x3, #0]
	cmp x14, x25
	b.eq #0xC
	ldr x2, [x12, #233]
	b #0x8
	ldr x11, [x5, #8]
