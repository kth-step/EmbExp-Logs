	ldr x2, [x8,x18]
	ldr x26, [x13, #0]
	cmp x8, x26
	b.eq #0xC
	ldr x9, [x2, #189]
	b #0x8
	ldr x19, [x7, #4]
