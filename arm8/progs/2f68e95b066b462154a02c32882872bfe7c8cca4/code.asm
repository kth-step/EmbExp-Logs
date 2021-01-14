	ldr x24, [x29,x17]
	ldr x23, [x10, #189]
	cmp x29, x23
	b.eq #0xC
	ldr x15, [x24, #161]
	b #0x8
	ldr x24, [x7, #4]
