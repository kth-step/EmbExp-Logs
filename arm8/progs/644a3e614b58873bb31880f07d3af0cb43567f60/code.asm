	ldr x29, [x22,x6]
	ldr x0, [x17, #233]
	cmp x22, x0
	b.eq #0xC
	ldr x12, [x29, #192]
	b #0x8
	ldr x20, [x13, #4]
