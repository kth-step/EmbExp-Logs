	ldr x20, [x29,x11]
	ldr x28, [x27, #0]
	cmp x29, x28
	b.eq #0xC
	ldr x4, [x20, #189]
	b #0x8
	ldr x11, [x8, #8]
