	ldr x18, [x11,x23]
	ldr x3, [x27, #0]
	cmp x11, x3
	b.eq #0xC
	ldr x22, [x18, #70]
	b #0x8
	ldr x7, [x0, #4]
