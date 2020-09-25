	ldr x27, [x11,x1]
	ldr x11, [x3, #0]
	cmp x11, x11
	b.eq #0xC
	ldr x16, [x27, #237]
	b #0x8
	ldr x22, [x8, #8]
