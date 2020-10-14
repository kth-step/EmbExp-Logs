	ldr x20, [x6,x2]
	ldr x8, [x7, #0]
	cmp x6, x8
	b.eq #0xC
	ldr x4, [x20, #189]
	b #0x8
	ldr x22, [x16]
