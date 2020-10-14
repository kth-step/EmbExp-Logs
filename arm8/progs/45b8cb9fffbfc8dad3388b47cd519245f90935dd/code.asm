	ldr x24, [x7,x3]
	ldr x17, [x3, #0]
	cmp x7, x17
	b.eq #0xC
	ldr x0, [x24, #248]
	b #0x8
	ldr x4, [x26, #8]
