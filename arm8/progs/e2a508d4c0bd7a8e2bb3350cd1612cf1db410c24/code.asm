	ldr x7, [x25,x25]
	ldr x4, [x15, #189]
	cmp x25, x4
	b.eq #0xC
	ldr x22, [x7, #80]
	b #0x8
	ldr x25, [x0, #8]
