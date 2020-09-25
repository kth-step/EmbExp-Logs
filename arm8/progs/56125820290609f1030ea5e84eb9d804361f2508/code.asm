	ldr x4, [x20,x6]
	ldr x11, [x7, #0]
	cmp x20, x11
	b.eq #0xC
	ldr x12, [x4, #203]
	b #0x8
	ldr x3, [x11, #8]
