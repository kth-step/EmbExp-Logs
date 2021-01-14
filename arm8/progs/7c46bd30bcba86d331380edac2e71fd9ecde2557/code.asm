	ldr x2, [x6,x17]
	ldr x10, [x4, #169]
	cmp x6, x10
	b.eq #0xC
	ldr x24, [x2, #248]
	b #0x8
	ldr x27, [x7]
