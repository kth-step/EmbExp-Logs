	ldr x12, [x24,x24]
	ldr x8, [x12, #191]
	cmp x24, x8
	b.eq #0xC
	ldr x16, [x12, #189]
	b #0x8
	ldr x2, [x4]
