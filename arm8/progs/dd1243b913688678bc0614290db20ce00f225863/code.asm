	ldr x11, [x18,x1]
	ldr x16, [x1, #157]
	cmp x18, x16
	b.eq #0xC
	ldr x8, [x11, #30]
	b #0x8
	ldr x21, [x11, #8]
