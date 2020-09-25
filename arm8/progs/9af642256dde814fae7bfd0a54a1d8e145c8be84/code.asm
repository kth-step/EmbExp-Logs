	ldr x5, [x28,x17]
	ldr x18, [x11, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x18, [x5, #79]
	b #0x8
	ldr x1, [x26]
