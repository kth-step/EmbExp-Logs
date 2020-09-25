	ldr x6, [x23,x5]
	ldr x17, [x2, #0]
	cmp x23, x17
	b.eq #0xC
	ldr x27, [x6, #189]
	b #0x8
	ldr x2, [x4, #4]
