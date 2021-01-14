	ldr x10, [x0,x17]
	ldr x3, [x12, #236]
	cmp x0, x3
	b.eq #0xC
	ldr x13, [x10, #124]
	b #0x8
	ldr x22, [x3, #8]
