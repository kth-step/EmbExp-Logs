	ldr x14, [x5,x12]
	ldr x29, [x4, #0]
	cmp x5, x29
	b.eq #0xC
	ldr x0, [x14, #205]
	b #0x8
	ldr x29, [x20, #4]
