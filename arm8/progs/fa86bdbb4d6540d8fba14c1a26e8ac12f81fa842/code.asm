	ldr x14, [x12,x22]
	ldr x20, [x11, #0]
	cmp x12, x20
	b.eq #0xC
	ldr x27, [x14, #7]
	b #0x8
	ldr x1, [x3, #16]
