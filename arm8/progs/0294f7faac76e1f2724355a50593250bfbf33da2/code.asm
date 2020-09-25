	ldr x12, [x20,x22]
	ldr x23, [x2, #0]
	cmp x20, x23
	b.eq #0xC
	ldr x7, [x12, #189]
	b #0x8
	ldr x20, [x0, #16]
