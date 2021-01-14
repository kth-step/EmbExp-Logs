	ldr x19, [x9,x18]
	ldr x8, [x18, #166]
	cmp x9, x8
	b.eq #0xC
	ldr x23, [x19, #189]
	b #0x8
	ldr x11, [x15, #8]
