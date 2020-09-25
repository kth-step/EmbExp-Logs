	ldr x4, [x20,x11]
	ldr x3, [x10, #0]
	cmp x20, x3
	b.eq #0xC
	ldr x12, [x4, #104]
	b #0x8
	ldr x10, [x0, #4]
