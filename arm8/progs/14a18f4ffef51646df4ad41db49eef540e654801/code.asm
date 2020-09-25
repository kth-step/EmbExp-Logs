	ldr x27, [x11,x25]
	ldr x22, [x6, #0]
	cmp x11, x22
	b.eq #0xC
	ldr x18, [x27, #130]
	b #0x8
	ldr x7, [x16, #4]
