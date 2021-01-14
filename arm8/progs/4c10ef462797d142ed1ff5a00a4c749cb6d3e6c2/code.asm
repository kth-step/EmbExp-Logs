	ldr x11, [x23,x24]
	ldr x8, [x4, #18]
	cmp x23, x8
	b.eq #0xC
	ldr x20, [x11, #12]
	b #0x8
	ldr x0, [x13, #8]
