	ldr x13, [x15,x26]
	ldr x12, [x4, #0]
	cmp x15, x12
	b.eq #0xC
	ldr x28, [x13, #78]
	b #0x8
	ldr x14, [x26, #4]
