	ldr x12, [x26,x3]
	ldr x11, [x28, #47]
	cmp x26, x11
	b.eq #0xC
	ldr x0, [x12, #143]
	b #0x8
	ldr x21, [x7, #4]
