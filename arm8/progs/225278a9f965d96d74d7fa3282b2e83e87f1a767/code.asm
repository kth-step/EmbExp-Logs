	ldr x4, [x3,x25]
	ldr x12, [x11, #0]
	cmp x3, x12
	b.eq #0xC
	ldr x22, [x4, #193]
	b #0x8
	ldr x18, [x7, #8]
