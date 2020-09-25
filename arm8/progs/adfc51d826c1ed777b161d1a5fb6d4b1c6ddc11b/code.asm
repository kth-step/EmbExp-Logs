	ldr x12, [x17,x26]
	ldr x8, [x4, #0]
	cmp x17, x8
	b.eq #0xC
	ldr x11, [x12, #43]
	b #0x8
	ldr x23, [x22]
