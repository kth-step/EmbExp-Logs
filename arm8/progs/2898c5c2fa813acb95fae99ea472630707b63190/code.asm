	ldr x22, [x11,x23]
	ldr x16, [x18, #0]
	cmp x11, x16
	b.eq #0xC
	ldr x1, [x22, #25]
	b #0x8
	ldr x8, [x23, #16]
