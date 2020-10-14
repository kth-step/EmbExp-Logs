	ldr x23, [x26,x12]
	ldr x15, [x7, #0]
	cmp x26, x15
	b.eq #0xC
	ldr x12, [x23, #189]
	b #0x8
	ldr x26, [x24, #8]
