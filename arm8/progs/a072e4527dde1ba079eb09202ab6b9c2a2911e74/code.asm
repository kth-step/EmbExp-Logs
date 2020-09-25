	ldr x14, [x23,x17]
	ldr x20, [x4, #0]
	cmp x23, x20
	b.eq #0xC
	ldr x16, [x14, #11]
	b #0x8
	ldr x11, [x24]
