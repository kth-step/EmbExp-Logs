	ldr x19, [x9,x22]
	ldr x11, [x14, #10]
	cmp x9, x11
	b.eq #0xC
	ldr x22, [x19, #189]
	b #0x8
	ldr x12, [x0]
