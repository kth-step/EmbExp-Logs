	ldr x12, [x11,x3]
	ldr x1, [x20, #0]
	cmp x11, x1
	b.eq #0xC
	ldr x20, [x12, #84]
	b #0x8
	ldr x23, [x18, #8]
