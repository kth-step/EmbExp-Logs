	ldr x3, [x19,x28]
	ldr x4, [x15, #48]
	cmp x19, x4
	b.eq #0xC
	ldr x8, [x3, #189]
	b #0x8
	ldr x16, [x14, #16]
