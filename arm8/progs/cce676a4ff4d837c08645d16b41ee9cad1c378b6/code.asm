	ldr x7, [x14,x11]
	ldr x20, [x1, #6]
	cmp x14, x20
	b.eq #0xC
	ldr x9, [x7, #143]
	b #0x8
	ldr x13, [x12, #16]
