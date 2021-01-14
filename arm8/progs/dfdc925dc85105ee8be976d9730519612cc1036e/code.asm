	ldr x16, [x1,x24]
	ldr x24, [x22, #6]
	cmp x1, x24
	b.eq #0xC
	ldr x3, [x16, #154]
	b #0x8
	ldr x11, [x3]
