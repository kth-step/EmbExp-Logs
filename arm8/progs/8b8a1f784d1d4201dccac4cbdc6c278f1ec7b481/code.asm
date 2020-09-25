	ldr x18, [x14,x22]
	ldr x1, [x8, #0]
	cmp x14, x1
	b.eq #0xC
	ldr x14, [x18, #148]
	b #0x8
	ldr x11, [x2, #8]
