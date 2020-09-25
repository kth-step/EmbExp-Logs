	ldr x4, [x27,x8]
	ldr x15, [x17, #0]
	cmp x27, x15
	b.eq #0xC
	ldr x14, [x4, #78]
	b #0x8
	ldr x19, [x16, #8]
