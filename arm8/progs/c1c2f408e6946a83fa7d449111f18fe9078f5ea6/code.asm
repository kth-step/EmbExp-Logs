	ldr x8, [x10,x24]
	ldr x1, [x6, #0]
	cmp x10, x1
	b.eq #0xC
	ldr x7, [x8, #119]
	b #0x8
	ldr x24, [x24]
