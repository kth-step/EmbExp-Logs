	ldr x3, [x8,x14]
	ldr x20, [x28, #0]
	cmp x8, x20
	b.eq #0xC
	ldr x25, [x3, #189]
	b #0x8
	ldr x8, [x7]
