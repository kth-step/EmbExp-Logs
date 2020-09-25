	ldr x8, [x0,x4]
	ldr x12, [x28, #0]
	cmp x0, x12
	b.eq #0xC
	ldr x18, [x8, #48]
	b #0x8
	ldr x20, [x17, #4]
