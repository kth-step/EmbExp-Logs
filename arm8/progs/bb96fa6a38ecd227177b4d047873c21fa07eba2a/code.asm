	ldr x3, [x5,x24]
	ldr x2, [x18, #57]
	cmp x5, x2
	b.eq #0xC
	ldr x6, [x3, #185]
	b #0x8
	ldr x10, [x20, #8]
