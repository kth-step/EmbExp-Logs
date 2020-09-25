	ldr x19, [x20,x24]
	ldr x2, [x11, #0]
	cmp x20, x2
	b.eq #0xC
	ldr x20, [x19, #184]
	b #0x8
	ldr x6, [x2]
