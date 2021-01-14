	ldr x10, [x15,x8]
	ldr x0, [x13, #78]
	cmp x15, x0
	b.eq #0xC
	ldr x4, [x10, #205]
	b #0x8
	ldr x6, [x29, #8]
